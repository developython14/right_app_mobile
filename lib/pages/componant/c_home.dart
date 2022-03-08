import 'package:flutter/material.dart';

const Color back = Colors.grey;
const Color front = Colors.white;

class emoji_text extends StatelessWidget {
  const emoji_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 25),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'let we do our service',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 26, color: front)),
            TextSpan(text: '🔥', style: TextStyle(fontSize: 26))
          ]),
        ));
  }
}
