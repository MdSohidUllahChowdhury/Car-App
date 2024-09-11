import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String nameTheBottom;
  final IconData iconName;
  final void Function()? routName;
  const CustomBottom(
      {super.key,
      required this.nameTheBottom,
      required this.iconName,
      required this.routName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: routName,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.grey.shade300),
          elevation: WidgetStateProperty.all(0),
          minimumSize: WidgetStateProperty.all<Size>(const Size(280, 60)),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey.shade200,
              child: Icon(iconName,color: Colors.black,),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              nameTheBottom,
              style: const TextStyle(
                  color: Colors.black, 
                  letterSpacing: 1.2, 
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
