import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  final String title;
  final String desc;
  final VoidCallback callback;
  MenuProfile(this.title, this.desc, this.callback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: callback,
      contentPadding: EdgeInsets.symmetric(horizontal: 15),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${title}',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Text(
            '${desc}',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ],
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.grey,
        size: 35,
      ),
    );
  }
}
