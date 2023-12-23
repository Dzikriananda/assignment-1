import 'package:assigment_1/src/core/styles/color.dart';
import 'package:assigment_1/src/core/styles/text_style.dart';
import 'package:assigment_1/src/data/model/user_response.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Datum item;
  const ListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: ListTile(
        onTap: () {
          final result = '${item.firstName} ${item.lastName}';
          Navigator.pop(context, result);
        },
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            item.avatar,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(item.firstName,style: listItemNameTextStyle),
                  const SizedBox(width: 5),
                  Text(item.lastName,style: listItemNameTextStyle)
                ],
              ),
              Text(item.email,style: listItemEmailTextStyle,)
            ],
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        shape: const Border(
          bottom: BorderSide(
              color: appBarBorderColor
          ),
        ),
      ),
    );
  }
}