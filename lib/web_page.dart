import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromARGB(255, 38, 41, 55);
Color buttonOnColor = const Color.fromARGB(255, 120, 132, 206);

class DateProgressive extends StatelessWidget {
  final double value;
  final int number;
  final String name;
  const DateProgressive(this.number, this.name, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 100,
      child: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  value: value,
                  backgroundColor: Theme.of(context).primaryColor.withAlpha(125),
                  // color: Colors.black.withAlpha(100),
                  strokeWidth: 8,
                  strokeAlign: 5.0,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  number.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

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
      body: const SingleChildScrollView(child: ViewPort()),
    );
  }
}

class ViewPort extends StatelessWidget {
  const ViewPort({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              "assets/imgs/5.jpg",
              fit: BoxFit.fitWidth,
            ),
            Container(
              // color: Colors.red,
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * .80,
              padding: const EdgeInsets.only(left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.sizeOf(context).height * .30),
                  const Text(
                    "WELCOME",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "MUSIC RELOADED\nPARTY 2023",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    children: [
                      DateProgressive(39, "Days", .4),
                      DateProgressive(17, "Hours", .2),
                      DateProgressive(42, "Minute", .9),
                      DateProgressive(19, "Sec", .8),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
