import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatelessWidget {
  final String icon;
  final String description;
  final VoidCallback callback;
  BottomNavigationItem(this.icon, this.description, this.callback);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 60,
        child: Material(
          child: InkWell(
            onTap: callback,
            child: Container(
              height: 60,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('${this.icon}'),
                  SizedBox(height: 3),
                  Text(
                    '${this.description}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
