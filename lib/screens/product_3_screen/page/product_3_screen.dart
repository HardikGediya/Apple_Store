import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcatser_2nd_pro/utils/textstyle.dart';

// ignore_for_file: prefer_const_constructors

import '../../../models/product_models.dart';

class Product3Screen extends StatefulWidget {
  const Product3Screen({Key? key}) : super(key: key);

  @override
  State<Product3Screen> createState() => _Product3ScreenState();
}

class _Product3ScreenState extends State<Product3Screen> {
  DateTime? selectedDate;

  DateTime nowDays = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: true,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Text(
                'Shopping Cart',
                style: mainHeading,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
                prefix: Icon(
                  CupertinoIcons.person_fill,
                  color: Colors.grey,
                ),
                placeholder: "Name",
                placeholderStyle: hintText,
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
                prefix: Icon(
                  CupertinoIcons.mail_solid,
                  color: Colors.grey,
                ),
                placeholder: "Email",
                placeholderStyle: hintText,
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: CupertinoTextField(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent)),
                prefix: Icon(
                  CupertinoIcons.location_fill,
                  color: Colors.grey,
                ),
                placeholder: "Location",
                placeholderStyle: hintText,
              ),
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        color: Colors.grey,
                      ),
                      Text(
                        'Delivery Time',
                        style: hintText,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      (selectedDate != null)
                          ? Text(
                              '${selectedDate?.day} - ${selectedDate?.month} - ${selectedDate?.year} ${selectedDate?.hour}:${selectedDate?.minute} ${selectedDate?.timeZoneName}',
                              style: normalText,
                            )
                          : Text(
                              '${nowDays.day} - ${nowDays.month} - ${nowDays.year}',
                              style: normalText,
                            ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).copyWith().size.height * 0.25,
              color: Colors.white,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.dateAndTime,
                onDateTimeChanged: (value) {
                  if (value != null && value != selectedDate)
                    setState(() {
                      selectedDate = value;
                    });
                },
                maximumYear: 2023,
                minimumYear: 2022,
                initialDateTime: DateTime.now(),
              ),
            ),
            SizedBox(
              height: 170,
              child: ListView.separated(
                itemBuilder: (context, i) {
                  return Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
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
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${data[i].title}',
                                    style: normalText,
                                  ),
                                  Text(
                                    '${data[i].subtitle}.00',
                                    style: hintText,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '${data[i].subtitle}.00',
                              style: normalText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, i) {
                  return Divider(
                    indent: 85,
                    thickness: 1.1,
                  );
                },
                itemCount: 2,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Shipping \$21.00',
                            style: hintText,
                          ),
                          Text(
                            'Tax \$10.32',
                            style: hintText,
                          ),
                          Text(
                            'Total \$203.32',
                            style: normalText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
