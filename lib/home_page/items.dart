import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  String num;
  String text;
  Item({this.text,this.num});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(
          num,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              fontFamily: 'font'),
        ),
        Text(text, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            fontFamily: 'font'),),

      ],
    ) ;
  }
}


class contItem extends StatelessWidget {
  String text;
  contItem({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: MediaQuery.of(context).size.width/3.5,
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.all(Radius.circular(12)),
          color: Colors.grey[200]),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontFamily: 'font'),
      ),
    );
  }
}


TextStyle style =TextStyle(
  fontSize: 15,
  color: Colors.grey,
  fontWeight: FontWeight.normal,
);
TextStyle title =TextStyle(
  fontSize: 19,
  color: Colors.black87,
  fontWeight: FontWeight.w700,
  fontFamily: 'font'
);