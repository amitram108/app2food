import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoriesWidget extends StatelessWidget {
  Widget? title;
  Widget? icon;
  int? selectedIndex;
  ValueChanged<int>? valueChanged;

  CategoriesWidget(
      {super.key,
      this.title,
      this.icon,
      this.selectedIndex,
      this.valueChanged});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      width: 75.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkResponse(
          child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: icon,
                    subtitle: title,
                    selected: selectedIndex == index,
                    onTap: () => valueChanged,
                  );
                }),
          )
        ],
      )),
    ));
  }
}

class NavigationList {
  Widget? title;
  Widget? icon;

  NavigationList(this.title, this.icon);
}
