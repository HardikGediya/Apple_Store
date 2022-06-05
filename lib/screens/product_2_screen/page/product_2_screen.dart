import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: prefer_const_constructors

import '../../../models/product_models.dart';
import '../../../utils/textstyle.dart';

class Product2Screen extends StatefulWidget {
  const Product2Screen({Key? key}) : super(key: key);

  @override
  State<Product2Screen> createState() => _Product2ScreenState();
}

class _Product2ScreenState extends State<Product2Screen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.all(15),
          child: CupertinoTextField(
            padding: const EdgeInsets.all(15),
            prefix: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
            ),
            suffix: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                CupertinoIcons.clear_circled_solid,
                color: Colors.grey,
              ),
            ),
            placeholder: 'Serach here',
            placeholderStyle: hintText,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
         SizedBox(
            height: 650,
            child: ListView.separated(
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(7),
                              image: DecorationImage(
                                image: AssetImage('${data[i].img}'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
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
                return const Divider(indent: 85,thickness: 1.1,);
              },
              itemCount: 5,
            ),
          ),
        
      ]),
    );
  }
}
