import 'package:flutter/material.dart';

Color priorityColor(BuildContext context, int priority){
  var markerColor = Theme.of(context).indicatorColor;
  if(priority == 1){
    markerColor = Theme.of(context).indicatorColor;
  }else if(priority == 2){
    markerColor = Theme.of(context).colorScheme.secondaryFixed;
  }else{
    markerColor = Theme.of(context).colorScheme.primaryFixed;
  }

  return markerColor;
}