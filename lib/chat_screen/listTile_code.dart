import 'package:flutter/material.dart';

class ListtileCode extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final AssetImage myImage;
  const ListtileCode({super.key, this.name='', this.message='', this.date='', required this.myImage});

  @override
  Widget build(BuildContext context) {
    return
        ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: myImage,
          ),
          title: Text(name,style: TextStyle(color: Colors.white),),
          subtitle: Text(message),
          trailing: Text(date),

        );


  }
}
