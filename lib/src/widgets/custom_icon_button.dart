// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onTap;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 60,
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
