import 'package:flutter/material.dart';

class IconComponent extends StatelessWidget {
  final String iconPath;
  const IconComponent({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return  Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: BoxBorder.all(
                          color: Colors.grey
                        )
                      ),
                      child: Image.asset(iconPath,
                      width: 30,
                      height: 30,
                      ),
                    );
  }
}