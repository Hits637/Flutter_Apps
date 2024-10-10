import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopApp(),
    );
  }
}

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State createState() => _ShopAppState();
}

class _ShopAppState extends State {
  int num = 1;
  bool val = true;
  bool mainval = true;

  int price = 570;
  numincrement() {
    num++;
  }

  numdecrement() {
    if (num > 1) {
      num--;
    }
  }

  Scaffold cartScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  mainval = true;
                  setState(() {});
                },
                icon: const Icon(Icons.arrow_back_ios)),
            const SizedBox(
              width: 100,
            ),
            const Text("My Cart",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                )),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 150,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 240, 239, 239),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 80),
                        child: Text(
                          "Nike Shoes",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        width: 200,
                        child: Text(
                            "With iconic style and legendary comfort, on repeat"),
                      ),
                      SizedBox(
                        width: 190,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$$price",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.remove),
                                  Container(
                                    height: 25,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "$num",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const Icon(Icons.add)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(15),
              height: 150,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 240, 239, 239),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 80),
                        child: Text(
                          "Nike Shoes",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                        width: 200,
                        child: Text(
                            "With iconic style and legendary comfort, on repeat"),
                      ),
                      SizedBox(
                        width: 190,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$$price",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                            Container(
                              width: 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Icon(Icons.remove),
                                  Container(
                                    height: 25,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "$num",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const Icon(Icons.add)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
            height: 200,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text("\$800",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Fee:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "\$5",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discount:",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "40%",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                      child: const Text(
                        "Check Out",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Scaffold stateChange() {
    if (val == true) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                "Shoes",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(
                width: 250,
              ),
              IconButton(
                onPressed: () {
                  mainval = false;

                  setState(() {});
                },
                icon: const Icon(Icons.shopping_cart, color: Colors.purple),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
                height: 380,
                child: Image.network(
                  "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  '''Nike Air Force 1 "07''',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                      Colors.blue,
                    )),
                    child: const Text("SHOES",
                        style: TextStyle(
                          color: Colors.white,
                        ))),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  child: const Text("FOOTWEAR",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                "With iconic style and legendary comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, era- echoing '80s construction and reflective-design Swoosh logos.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                const Text("Quantity",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    numdecrement();
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.9),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "$num",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    )),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    numincrement();
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      num = 1;
                      setState(() {});
                    },
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 380,
              height: 55,
              child: ElevatedButton(
                  onPressed: () {
                    val = false;
                    setState(() {});
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  child: const Text(
                    "PURCHASE",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
            )
          ],
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Your Order",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500,
                color: Colors.purple,
              ),
            ),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Image(
                image: NetworkImage(
                    "https://cdni.iconscout.com/illustration/premium/thumb/order-placed-illustration-download-in-svg-png-gif-file-formats--online-shopping-ecommerce-places-successfully-successful-set-01-pack-e-commerce-illustrations-7972531.png?f=webp"),
              ),
              const Text("Thanks for Shopping",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    val = true;
                    setState(() {});
                  },
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.red)),
                  child: const Text(
                    "Back",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return mainval ? stateChange() : cartScaffold();
  }
}
