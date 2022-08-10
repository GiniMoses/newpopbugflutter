import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  String title;
  double amount;
  Color begincolor;
  Color endcolor;
  double size;

  MoneyBox(this.title, this.amount, this.begincolor, this.endcolor, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [begincolor, endcolor])),
      height: 85,
      child: Row(
        children: [
          Icon(Icons.mail_outline),
          Text(
            title,
          ),
          Expanded(
            child: Text(
              '${NumberFormat("#,###.###").format(amount)}',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          ),
          const Text("บาท",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
