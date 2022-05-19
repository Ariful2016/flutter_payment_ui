

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/pages/payment_page.dart';
import 'package:flutter_payment_app/weigets/icon_button_with_text.dart';
import 'package:flutter_payment_app/weigets/large_button.dart';
import 'package:get/get.dart';

import '../weigets/size_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),
          ]
        )
      ),
    );
  }

  _headSection(){
    return Container(
      height: MediaQuery.of(context).size.height*0.33,
        child: Stack(
          children: [
            _mainBackground(),
            _textContainer(),
            _curveImageContainer(),
            _buttonContainer(),
          ],
        ),
    );
  }

  _mainBackground(){
     return Positioned(

         child: Container(
           decoration: const BoxDecoration(
             image: DecorationImage(
               fit: BoxFit.cover,
               image: AssetImage(
                 "images/background.png"
               )
             )
           )
         ),

    );
  }
  _textContainer(){
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 80,
          child: Text(
            "My Bills",
            style: TextStyle(
              fontSize: 60,
              color: Color(0xFF293952),
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        Positioned(
          left: 50,
          top: 70,
          child: Text(
            "My Bills",
            style: TextStyle(
                fontSize: 45,
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
  _curveImageContainer(){
    return Positioned(
        left: 0,
        right: -2,
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height*0.1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        "images/curve.png"
                    )
                )
            )
        )
    );
  }
  _buttonContainer(){
    return Positioned(
      right: 56,
      bottom: 0,
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet<dynamic>(
               isScrollControlled: true,
                barrierColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                context: context, 
                builder: (BuildContext bc){
                  return Container(
                    height: MediaQuery.of(context).size.height-175,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                            child: Container(
                              //color: Colors.redAccent,
                              color: Color(0xFFeeF1f4).withOpacity(0.7),
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height-227,
                            )),
                        Positioned(
                          top: 0,
                          right: 54,
                            child: Container(
                              padding: const EdgeInsets.only(top: 5, bottom: 20),
                              width: 60,
                              height: 250,
                              decoration: BoxDecoration(
                                color: AppColor.mainColor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButtonWithText(icon: Icons.cancel,
                                  iconColor: AppColor.mainColor,
                                  textColor: Colors.white,
                                  backgroundColor: Colors.white,
                                  onTap: (){Navigator.pop(context);},
                                  ),
                                  IconButtonWithText(icon: Icons.add,
                                    iconColor: AppColor.mainColor,
                                    textColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    onTap: (){},
                                    text: "Add Bill",
                                  ),
                                  IconButtonWithText(icon: Icons.history,
                                    iconColor: AppColor.mainColor,
                                    textColor: Colors.white,
                                    backgroundColor: Colors.white,
                                    onTap: (){},
                                    text: "History",
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  );
                });
          },
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/lines.png"
                )
              ),

            ),
          ),
        ));
  }
  _listBills(){
    return Positioned(
      top: MediaQuery.of(context).size.height*0.35 ,
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
            itemCount: 3,
              itemBuilder: (_, index){
                return Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 110,
                  width: MediaQuery.of(context).size.width-20,
                  decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30)
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFFd8dbe0),
                            offset: Offset(1,1),
                            blurRadius: 20,
                            spreadRadius: 10
                        )
                      ]
                  ),
                  child: Container(
                    margin:  EdgeInsets.only(top: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 3,
                                            color: Colors.grey
                                        ),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "images/brand1.png"
                                            )
                                        )
                                    )
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Walton Power",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.mainColor,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      "ID:653439",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.idColor,
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: SizeText(text:"Auto pay on 17th May 22", color: AppColor.green),
                            ),
                            SizedBox(height: 5,)

                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: AppColor.selectBackground
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Select",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: AppColor.selectColor

                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: Container()),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(
                                      "\$999.00",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900,
                                          color: AppColor.mainColor

                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 23),
                                  child: Text(
                                      "Due in 5 days",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: AppColor.idColor

                                      )
                                  ),
                                ),
                                SizedBox(height: 10,)


                              ],
                            ),
                            Container(
                              width: 5,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: AppColor.halfOval,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      bottomLeft: Radius.circular(30)
                                  )
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),

                );
              }),
        ));
  }

  _payButton(){
    return Positioned(
      bottom: 10,
        child: LargeButton(
          text: "Pay all bills",
          textColor: Colors.white,
          onTap:(){
            Get.to(()=>PaymentPage());
          }
        ));
  }
}
