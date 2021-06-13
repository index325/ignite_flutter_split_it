import 'package:flutter/material.dart';

class PersonTileWidget extends StatelessWidget {
  final String name;
  final bool isRemovable;

  const PersonTileWidget({
    Key? key,
    required this.name,
    this.isRemovable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 40,
        width: 40,
        color: Colors.grey.shade200,
      ),
      title: Text(name),
      trailing: IconButton(
        icon: isRemovable ? Icon(Icons.remove) : Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
