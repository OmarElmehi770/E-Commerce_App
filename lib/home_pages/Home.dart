import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              SizedBox(height: 50,),
              Text("Categorise",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Categorise(category: "All",backgroundColor : Colors.black,textColor :Colors.white),
                    Categorise(category: "Electronics",backgroundColor : Colors.white,textColor :Colors.black),
                    Categorise(category: "Fashion",backgroundColor : Colors.white,textColor :Colors.black),
                    Categorise(category: "Home & Kitshen",backgroundColor : Colors.white,textColor :Colors.black),
                    Categorise(category: "Clothes",backgroundColor : Colors.white,textColor :Colors.black),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                  Spacer(),
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                ],
              ),
              Row(
                children: [
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                  Spacer(),
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                ],
              ),
              Row(
                children: [
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                  Spacer(),
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                ],
              ),
              Row(
                children: [
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                  Spacer(),
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                ],
              ),
              Row(
                children: [
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                  Spacer(),
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                ],
              ),
              Row(
                children: [
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                  Spacer(),
                  Product_Container(image_url: 'assets/product_imgs/img1.jpeg',Product_name: "T-shirt",Product_price: "\$ 99.99", ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Categorise extends StatelessWidget {
  Categorise({
    super.key,
    required this.category,
    required this.backgroundColor,
    required this.textColor,
  });
  String category ;
  Color backgroundColor ;
  Color textColor ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Text(category,style: TextStyle(color: textColor),),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black),
        ),
      ),
    );
  }
}



class Product_Container extends StatelessWidget {
  const Product_Container({
    super.key, required this.image_url, required this.Product_name, required this.Product_price
  });
  final String image_url ;
  final String Product_name ;
  final String Product_price ;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 160,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                  image: DecorationImage(
                      image: AssetImage(image_url),
                      fit: BoxFit.fill)),
            ),
            Text(Product_name),
            Text(Product_price),
          ],
        ),
      ),
    );
  }
}