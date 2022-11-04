#!/bin/bash

function out2md {
awk '
BEGIN {
  first=1
}
# Titles
/^[A-Z][A-Za-z _-]+$/ {
  if (first != 1) {print("</pre>")}
  print("# " $0);
  print("<pre>")
  first=0;
  next
}
# Paragraphs
{
  sub("<", "\\&lt;")
  sub(">", "\\&gt;")
  print
}
# Finish last paragraph
END {
  if (first != 1) {print("</pre>")}
}'
}

topic_list=$(alr help | awk '/^ +[a-z]+/ {if ($1 !~ "alr") {print $1}}')

# Make a page from each help topic
for topic in $topic_list; do
    alr help $topic | out2md > alr-${topic}.md
done

# Make an index from the help subcommand. Markdown links do not work inside pre
alr help | out2md | awk '/^ +[a-z]+/ {
  if (system("test -f alr-" $1 ".md") == 0) {
    sub(/[a-z]+/, "<a href=\"alr-&.md\">&</a>")
  }
}
{
  print
}' > alr-help.md

