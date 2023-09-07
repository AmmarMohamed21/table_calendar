// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;
  final double height;
  final double width;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Material(
        borderRadius: BorderRadius.circular(4.0),
        color: Color(0xFFEAF0F4),
        child: IconButton(
          visualDensity: VisualDensity.compact,
          padding: EdgeInsets.zero,
          icon: icon,
          onPressed: onTap,
        ),
      ),
    );

    // Padding(
    //   padding: margin,
    //   child: !kIsWeb &&
    //           (platform == TargetPlatform.iOS ||
    //               platform == TargetPlatform.macOS)
    //       ? CupertinoButton(
    //           onPressed: onTap,
    //           padding: padding,
    //           child: icon,
    //         )
    //       : InkWell(
    //           onTap: onTap,
    //           borderRadius: BorderRadius.circular(100.0),
    //           child: Padding(
    //             padding: padding,
    //             child: icon,
    //           ),
    //         ),
    // );
  }
}
