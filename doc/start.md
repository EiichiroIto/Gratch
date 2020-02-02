# About this document
This document describes briefly how to use Gratch.

# Getting Started
## Start Gratch
After starting Pharo application, click Gratch button on the top menu, then Gratch starts.

## Make a graph
Graph is a structure consist of nodes (points) and edges (lines), each edge connects two nodes.
Gratch enables you adding nodes and edges to make graph easily.
Gratch has three modes: Graph mode, Nodes mode and Edges mode. In each mode, you can make scripts of graph, nodes and edges respectively. Mode is switched by clicking button on the mode buttons area at bottom right.

### Add nodes
Click a button with label "Nodes" on the mode buttons area. Click on the graph pane to add a node.
To place the node to another position, drag the node and release mouse button.

### Connect nodes with edges
Click a button with label "Edges" on the mode buttons area. Drag one node to another node to make an edge.

### Delete nodes or edges
After clicking "Nodes" button, double click a node then it appears an element viewer dialog of the node.
Click delete button on the dialog to delete the node. Also deleting an edge is the same.

## Make a script
Select a mode button (with labelled "Graph", "Nodes" and "Edges"). Like Scratch, you can drag a script block on the left side block menu to the Script area.

## Start scripts
Unlike Scratch but like Arduino IDE, Gratch uses "setup" and "loop" to start scripts. Setup scripts (with a hat block labelled "setup" on a top block) are executed once when "Setup" button clicked. On the other hand, Loop scripts (with a hat block labelled "loop") are executed repeatedly when "Loop" button clicked.
You can create multiple setup scripts (of course loop scripts) for graph, nodes and edges. Their scripts are executed in turn.

### Start setup scripts
To start setup scripts, click a button labelled "Setup" on the execution buttons area at top right. All setup scripts are executed once in sequence.

### Start loop scripts
To start loop scripts, click a button labelled "Loop" on the execution buttons area at top right. All loop scripts are executed repeatedly.

### Stop scripts
To stop scripts, click a button labelled "Stop" on the execution buttons area at top right.

## Save/Export scripts and a graph
To save both scripts and a graph, select "Save" from "File" menu.
To export a graph as GDF format, select "Export"-"Export GDF" from "File" menu.
To export scripts as text format, select "Export"-"Export S-EXP" from "File" menu.

## Snapshot graph area and recording video
To get a PNG file of graph area, select "Save Stage as PNG" from "Data" menu.
To record graph as an animated GIF, select "Start Stage Recording" from "Data" menu. After execution, select "Stop Stage Recording" to stop recording.

## Quit Gratch
Simply by clicking left top close button, then close Gratch and return to Pharo system.
To close Gratch and quit Pharo system, Select "Quit" from "File" menu.

