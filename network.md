---
title: Network Graph
layout: default
---

<style>

.links line {
  stroke: #999;
  stroke-opacity: 0.6;
}

text {
  font-family: sans-serif;
  pointer-events: none;
}

#svg-container {
background-color: #ffffff;
}
</style>

<div class="card">

Controls: Mouse wheel to zoom in and out, left click to move around or drag a
node, double-click to open node page.

    <div id="svg-container">
        <svg id="network-svg" width="100%" height="100vh">
            <marker id="arrow" viewBox="0 0 10 10" refX="26.5" refY="5" orient="auto">
              <!-- The black arrow head  -->
              <path d="M 0 0 L 10 5 L 0 10 z" />
            </marker>
       </svg>
    </div>
</div>

<script src="https://d3js.org/d3.v4.min.js"></script>
<script>

const default_text_size = 15;

var svg = d3.select("#network-svg")
  .call(d3.zoom().on("zoom", function () {
       svg.attr("transform", d3.event.transform);
       svg.selectAll("text")
         .attr("font-size", function(d) {
                const zoom = d3.event.transform.k
                const size = (default_text_size / zoom);

                if (zoom < 1.0) {
                   // Hide text when zoomed out
                   return "0px";
                } else {
                   return size + "px";
                }
            });
    }))
  .append("g");

var width = document.getElementById('svg-container').clientWidth;
var height = document.getElementById('svg-container').clientHeight;;

var simulation = d3.forceSimulation()
    .force("link", d3.forceLink().id(function(d) { return d.id; }))
    .force("charge", d3.forceManyBody())
    .force("center", d3.forceCenter(width / 2, height / 2));

d3.json("deps_graph_data.json", function(error, graph) {
  if (error) throw error;

  // Legend
  root_svg = d3.select("#network-svg")
  var cy = 20
  for (var key in graph.colors) {
      var circle = root_svg.append("circle")
          .attr("r", 6)
          .attr('cx', 20)
          .attr('cy', cy)
          .attr("fill", graph.colors[key]);
      var label = root_svg.append("text")
          .text(key)
          .attr('x', 30)
          .attr('y', cy + 5)
          .attr('font-size', default_text_size + 'px');
      cy += 25;
  }

  var link = svg.append("g")
      .attr("class", "links")
      .selectAll("line")
      .data(graph.links)
      .enter().append("line")
      .attr("marker-end", "url(#arrow)")
      .attr("stroke-width", function(d) { return Math.sqrt(d.value); });

 var node = svg.append("g")
      .attr("class", "nodes")
      .selectAll("g")
      .data(graph.nodes)
      .enter().append("g")

  var circles = node.append("circle")
      .attr("r", 5)
      .attr("fill", function(d) { return d.color; })
      .on("dblclick", function(d){ location.href = "crates/" + d.id; })
      .call(d3.drag()
          .on("start", dragstarted)
          .on("drag", dragged)
          .on("end", dragended));

  var labels = node.append("text")
      .text(function(d) {
        return d.id;
      })
      .attr('x', 6)
      .attr('y', 3)
      .attr('font-size', default_text_size + 'px');

  node.append("title")
      .text(function(d) { return d.desc; });

  simulation
      .nodes(graph.nodes)
      .on("tick", ticked);

  simulation.force("link")
      .links(graph.links);

  function ticked() {
    link
        .attr("x1", function(d) { return d.source.x; })
        .attr("y1", function(d) { return d.source.y; })
        .attr("x2", function(d) { return d.target.x; })
        .attr("y2", function(d) { return d.target.y; });

    node
        .attr("transform", function(d) {
          return "translate(" + d.x + "," + d.y + ")";
        })
  }
});

function dragstarted(d) {
  if (!d3.event.active) simulation.alphaTarget(0.3).restart();
  d.fx = d.x;
  d.fy = d.y;
}

function dragged(d) {
  d.fx = d3.event.x;
  d.fy = d3.event.y;
}

function dragended(d) {
  if (!d3.event.active) simulation.alphaTarget(0);
  d.fx = null;
  d.fy = null;
}
</script>

