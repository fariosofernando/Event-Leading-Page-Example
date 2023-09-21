import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromARGB(255, 38, 41, 55);
Color buttonOnColor = const Color.fromARGB(255, 120, 132, 206);

class ActionBar extends StatelessWidget {
  final Text child;
  final bool active;
  final bool filled;
  const ActionBar({
    required this.child,
    this.active = false,
    this.filled = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(active ? buttonOnColor : Colors.white),
      ),
      child: filled
          ? Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(color: Theme.of(context).primaryColor)),
              child: child,
            )
          : child,
    );
  }
}

class Webpage extends StatelessWidget {
  final String title;
  const Webpage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            const SizedBox(width: 100),
            Text(
              "O",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).primaryColor,
                fontSize: 50,
              ),
            ),
            const SizedBox(width: 5),
            const Text(
              "Logo",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: const [
          ActionBar(
            active: true,
            child: Text("Home"),
          ),
          ActionBar(
            child: Text("About"),
          ),
          ActionBar(
            child: Text("Perfomer"),
          ),
          ActionBar(
            child: Text("Event Schedule"),
          ),
          ActionBar(
            child: Text("Blog"),
          ),
          ActionBar(
            filled: true,
            child: Text("Contact"),
          ),
          SizedBox(width: 100),
        ],
      ),
      body: const ViewPort(),
    );
  }
}

class ViewPort extends StatelessWidget {
  const ViewPort({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/imgs/5.jpg"),
      ],
    );
  }
}
