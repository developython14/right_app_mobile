import 'package:flutter/material.dart';

const Color back = Colors.grey;
const Color front = Color.fromRGBO(17, 16, 16, 1);

class emoji_text extends StatelessWidget {
  const emoji_text({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.only(left: 25),
        child: RichText(
          text: TextSpan(children: [
            TextSpan(
                text: 'let we do our service \n with  pro quality',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 26, color: front)),
            TextSpan(text: '🔥', style: TextStyle(fontSize: 26))
          ]),
        ));
  }
}

class searchbar extends StatelessWidget {
  const searchbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(children: [
      Container(
        margin: EdgeInsets.all(25),
        decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(255, 151, 145, 144), width: 2),
            borderRadius: BorderRadius.circular(25)),
        child: TextField(
            cursorColor: front,
            decoration: InputDecoration(
                fillColor: front.withOpacity(0.3),
                filled: true,
                border: InputBorder.none,
                hintText: 'search for services experts blogs....',
                suffixIcon: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 218, 236, 219),
                ),
                contentPadding: EdgeInsets.all(18))),
      ),
    ]));
  }
}
