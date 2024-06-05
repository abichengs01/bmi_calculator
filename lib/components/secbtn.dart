import 'package:flutter/material.dart';

class SecBtn extends StatelessWidget {
  final VoidCallback onpress;
  final IconData icon;
  const SecBtn({super.key, required this.onpress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(50),color: Colors.red),
        child: Icon(icon,color: Colors.white,size: 25,),
      ),
    )
    ;
  }
}

