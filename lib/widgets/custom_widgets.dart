import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customTitleText(String? title, {BuildContext? context}) {
  return Text(
    title ?? '',
    style: const TextStyle(
      color: Colors.black87,
      fontFamily: 'HelveticaNeue',
      fontWeight: FontWeight.w900,
      fontSize: 20,
    ),
  );
}

Widget customIcon(
  BuildContext context, {
  required IconData icon,
  bool isEnable = false,
  double size = 18,
  bool isTwitterIcon = true,
  bool isFontAwesomeSolid = false,
  Color? iconColor,
  double paddingIcon = 10,
}) {
  iconColor = iconColor ?? Theme.of(context).textTheme.bodySmall!.color;
  return Padding(
    padding: EdgeInsets.only(bottom: isTwitterIcon ? paddingIcon : 0),
    child: Icon(
      icon,
      size: size,
      color: isEnable ? Theme.of(context).primaryColor : iconColor,
    ),
  );
}


Widget loader() {
  if (Platform.isIOS) {
    return const Center(
      child: CupertinoActivityIndicator(),
    );
  } else {
    return const Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
      ),
    );
  }
}
