import 'package:flutter/material.dart';
import 'package:list_treeview/tree/node/tree_node.dart';

class TreeNodeData extends NodeData {
  final String label;
  final Color color;

  String property1;
  String property2;
  String property3;

  TreeNodeData({this.label, this.color}) : super();
}
