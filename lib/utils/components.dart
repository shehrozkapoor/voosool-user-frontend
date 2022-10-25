import 'package:flutter/material.dart';
import 'package:voosool_flutter/models/food.dart' as FoodModel;
import 'package:voosool_flutter/utils/functions.dart';
import 'package:voosool_flutter/screens/mobile_view/food_item_detail.dart';

Container SocialSignupButton(String _with, String icon) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(
        10,
      ),
    ),
    child: MaterialButton(
      onPressed: (){},
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(_with, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontSize: 17),),
          Image.asset(icon),
        ],
      ),
    ),
  );
}

Container CustomField(String Name, Function action) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 5.0,),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
              focusedBorder:  OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(50),
              )
          ),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onChanged: (value) => action(value),
        ),
      ],
    ),
  );
}



Container CustomField2(String Name, Function action) {
  return Container(
    margin: EdgeInsets.only(top: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            Name,
            style: TextStyle(fontSize: 18),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            // hintText: "0",
          ),
          // The validator receives the text that the user has entered.
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          onChanged: (value) => action(value),
        ),
      ],
    ),
  );
}
Container HomepageCards(BuildContext context) {
  return Container(
    child: Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HomePageCard1(
          context,
          "Restaurants",
          "assets/food_icon1.png",
          () => {},
        ),
        HomePageCard1(
          context,
          "Grocery",
          "assets/grocery_icon1.png",
          () => {},
        )
      ],
    ),
  );
}

Widget HomePageCard1(
    BuildContext context, String name, String image, Function action) {
  return GestureDetector(
    onTap: () => {action()},
    child: Container(
      width: MediaQuery.of(context).size.width * .4,
      height: MediaQuery.of(context).size.height * .1,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(image),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Container SearchForm(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.0),
    ),
    child: TextFormField(
      autofocus: false,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        focusColor: Colors.white,
        contentPadding: const EdgeInsets.only(left: 15, right: 15),
        hintText: "Enter Location, City, Road...",
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),

        prefixIcon: Container(
          width: 90,
          height: 40,
          child: Row(
            children: [
              Image.asset("assets/map.png"),
              Image.asset(
                "assets/line.png",
                width: 10,
              ),
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.white,
          ),
        ),
        // hintText: "0",
      ),
      // The validator receives the text that the user has entered.
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      // onChanged: (value) => action(value),
    ),
  );
}

Container HomepageMiniCards(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 15),
    width: MediaQuery.of(context).size.width * .95,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HomepageMiniCard(context, "Food", "assets/product1.png"),
        HomepageMiniCard(context, "Food", "assets/product1.png"),
        HomepageMiniCard(context, "Food", "assets/product1.png"),
        HomepageMiniCard(context, "Food", "assets/product1.png"),
      ],
    ),
  );
}

Container HomepageList(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * .25,
    child: ListView.builder(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(20),
          color: const Color.fromRGBO(178, 226, 217, 1),
          child: Column(
            children: [
              Image.asset("assets/product2.png"),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Apache shake and coke",
                            textAlign: TextAlign.left,
                          ),
                        ]),
                    Column(
                        //   crossAxisAlignment: CrossAxisAlignment.end,
                        children: [Text("8\$")]),
                  ],
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}

Container HomepageMiniCard(BuildContext context, String name, String image) {
  return Container(
    // padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
    width: MediaQuery.of(context).size.width * .2,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    child: Column(
      children: [
        Image.asset(image),
        Text("Food"),
      ],
    ),
  );
}

Widget TopRestaurants(BuildContext context) {
  return Column(children: [
    Container(
      margin: const EdgeInsets.all(10.0),
      child: const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Top Restaurants",
          textAlign: TextAlign.start,
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .20,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Restaurant(context, "Macdonald", "assets/restaurant.png");
        },
      ),
    )
  ]);
}

Container Restaurant(BuildContext context, String name, String image) {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    margin: EdgeInsets.all(20),
    width: MediaQuery.of(context).size.width * .40,
    child: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              image,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Text(name)
      ],
    ),
  );
}

Widget FoodMenus(BuildContext context, {required List<FoodModel.Food> foods}) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(10.0),
        child: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Food Menu",
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .80,
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            4,
            (index) {
              return Menu(context, "Product 1", "assets/restaurant.png");
            },
          ),
        ),
      ),
    ],
  );
}

Widget Menu(BuildContext context, String name, String image) {
  return GestureDetector(
    onTap: () => {
      NextScreen(context, FoodDetail()),
    },
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * .40,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20,
                ),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Text(
            name,
          )
        ],
      ),
    ),
  );
}

class CustomCheckbox extends StatefulWidget {
  CustomCheckbox({super.key, required this.text});
  String text;
  bool isChecked = false;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          value: widget.isChecked,
          onChanged: (bool? boolvalue) {
            setState(() {
              widget.isChecked = !widget.isChecked;
            });
          },
          // splashRadius: 50,
        ),
        Text(widget.text),
      ],
    );
  }
}

Widget Food(BuildContext context, String name, String image) {
  return Container(
    decoration: const BoxDecoration(
      // color: Colors.red,
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    margin: const EdgeInsets.all(5),
    width: MediaQuery.of(context).size.width * .45,
    child: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Text(name)
      ],
    ),
  );
}
