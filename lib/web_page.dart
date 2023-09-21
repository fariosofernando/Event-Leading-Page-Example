import 'package:flutter/material.dart';

Color backgroundColor = const Color.fromARGB(255, 38, 41, 55);
Color buttonOnColor = const Color.fromARGB(255, 120, 132, 206);
Color secundaryContainerColor = const Color.fromARGB(255, 26, 28, 33);

class PrecingCard extends StatelessWidget {
  final bool isMiddle;
  final String value;
  final String category;
  const PrecingCard(this.value, this.category, {this.isMiddle = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 200,
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: isMiddle
            ? null
            : Border.all(
                color: Theme.of(context).primaryColor,
              ),
        color: isMiddle ? buttonOnColor.withAlpha(20) : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 40,
              color: isMiddle ? buttonOnColor : Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Centro medio",
            style: TextStyle(
              color: isMiddle ? Colors.white : Colors.white.withAlpha(170),
            ),
          ),
          Text(
            "Centro e meio",
            style: TextStyle(
              color: isMiddle ? Colors.white : Colors.white.withAlpha(170),
            ),
          ),
          Text(
            "Todos centro medio",
            style: TextStyle(
              color: isMiddle ? Colors.white : Colors.white.withAlpha(170),
            ),
          ),
          Text(
            "Centro medio",
            style: TextStyle(
              color: isMiddle ? Colors.white : Colors.white.withAlpha(170),
            ),
          ),
          Text(
            "Centro de medio",
            style: TextStyle(
              color: isMiddle ? Colors.white : Colors.white.withAlpha(170),
            ),
          ),
          const SizedBox(height: 5),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                isMiddle ? Theme.of(context).primaryColor.withAlpha(50) : null,
              ),
            ),
            child: const Text("Select Package"),
          )
        ],
      ),
    );
  }
}

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
        ),
        SizedBox(
          height: 350,
          width: MediaQuery.sizeOf(context).width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/imgs/7.jpg',
                  height: 250,
                ),
              ),
              const SizedBox(width: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  const Text(
                    "Global Fridays\nGlow Up 4.20",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.\nNulla vestibulum tempus metus,\nsagittis condimentum mi.',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      FilledButton(
                        onPressed: () {},
                        child: const Text("View Datails"),
                      ),
                      const SizedBox(width: 10),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text("Get Ticket"),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          color: secundaryContainerColor,
          height: 800,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Opacity(
                opacity: .5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/imgs/google-logo-1.png', width: 150),
                    const SizedBox(width: 25),
                    Image.asset('assets/imgs/Oracle-logo.png', width: 150),
                    const SizedBox(width: 25),
                    Image.asset('assets/imgs/paypal-logo.png', width: 150),
                  ],
                ),
              ),
              const Text(
                "Pricing",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 25),
              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              const SizedBox(height: 25),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrecingCard('\$300', 'Bronze'),
                  SizedBox(width: 25),
                  PrecingCard('\$549', 'Silver', isMiddle: true),
                  SizedBox(width: 25),
                  PrecingCard('\$749', 'Gold'),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          // height: MediaQuery.sizeOf(context).height * .50,
          child: Stack(
            children: [
              Image.asset(
                'assets/imgs/1.jpg',
                fit: BoxFit.fitWidth,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'Are you wanted to peform Mavent?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vestibulum tempus metus, sagittis condimentum mi. Donec ullamcorper risus purus, nec fermentum ex sodales eu.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      OutlinedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(
                            Colors.white,
                          ),
                        ),
                        child: const Text("Submit Request"),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
