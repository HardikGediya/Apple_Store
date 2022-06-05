// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcatser_2nd_pro/models/product_models.dart';
import 'package:outcatser_2nd_pro/utils/textstyle.dart';

class Product1Screen extends StatefulWidget {
  const Product1Screen({Key? key}) : super(key: key);

  @override
  State<Product1Screen> createState() => _Product1ScreenState();
}

class _Product1ScreenState extends State<Product1Screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 10,right: 10,top: 20),
            child: Text('Cupertino Store',style: mainHeading,),
          ),
          SizedBox(height: 10,),
          Divider(thickness: 1.1,),
          SizedBox(
            height: 650,
            child: ListView.separated(
              itemBuilder: (context, i) {
                return Padding(
                  padding: EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                image: AssetImage('${data[i].img}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${data[i].title}',style: normalText,),
                                Text('${data[i].subtitle}',style: hintText,),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(CupertinoIcons.add_circled),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, i) {
                return Divider(indent: 85,thickness: 1.1,);
              },
              itemCount: data.length,
            ),
          ),
        ],
      ),
    );
  }
}
