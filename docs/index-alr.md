---
title: Help
description: "alr manual pages"
layout: default
---
<div class="card">
  <style>
/* Create two equal columns that floats next to each other */
.doc_toc {
  float: left;
  width: 15em;
}

.doc_content {
  float: left;
  width: calc(100% - 15em);
}

/* Clear floats after the columns */
.doc_row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - makes the two columns stack on top of each other instead
of next to each other */

@media screen and (max-width: 60em) {
  .doc_toc {
    width: 100%;
  }
  .doc_content {
    width: 100%;
  }
}

/* Table-of-content style */
#markdown-toc {
  padding-left: 1em;
  font-size: smaller;
}
#markdown-toc ul {
  padding-left: 1em;
}


</style>
<div class="doc_row">
 <div class="doc_toc">
  <div markdown="1">

   * Do not remove this line (it will not be displayed)
   {:toc}

  </div>
  <small style="color:#808080">
      This help documentation has been generated from the builtin `alr` help
      messages. Don't hesitate to suggest fix(es) and/or improvement(s) in
      the <a href="https://github.com/alire-project/alire/src/alr">GitHub
      repository.</a>
  </small>
 </div>
  <div class="doc_content" markdown="1">

 <!-- All the empty lines below, as well as the absence of indentation, seem to
   be required for a correct parsing of the markdown files -->

{% include_relative alr.md %}

  </div>
 </div>
</div>