import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  Widget? title;
  Widget? subTitle;
  Widget? icon;

  ItemWidget({
    super.key,
    this.title,
    this.subTitle,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: title,
          subtitle: subTitle,
          trailing: icon,
        ),
      ],
    );
  }
}
