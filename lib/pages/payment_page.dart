import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_payment_app/component/colors.dart';
import 'package:flutter_payment_app/weigets/icon_button_with_text.dart';
import 'package:flutter_payment_app/weigets/large_button.dart';
import 'package:get/get.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 30),
        height: h,
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "images/paymentbackground.png"
            )
          )
        ),
        child: Column(
          children: [
            Container(
              width: double.maxFinite,
              height: h*0.12,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                          "images/success.png"
                      )
                  )
              ),

            ),
            SizedBox(height: h*0.03,),
            Text(
                "Success",
              style: TextStyle(
                color: AppColor.mainColor,
                fontSize: 30,
                fontWeight: FontWeight.bold
              )
            ),
            Text(
              "Payment is completed for 3 bills",
              style: TextStyle(
                  color: AppColor.idColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600
              )
            ),
            SizedBox(height: h*0.03,),
            Container(
              height: h*0.17,
              width: w*.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.grey.withOpacity(.5)
                )
              ),
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                   itemBuilder: (_, index){
                     return Container(
                       child: Column(
                         children: [
                           Row(
                             children: [
                               Container(
                                 margin: const EdgeInsets.only(top: 7, left: 15, bottom: 5),
                                 width: 35,
                                 height: 35,
                                 decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(20),
                                     color: Colors.green
                                 ),
                                 child: Icon(Icons.done, size: 25, color: Colors.white,),
                               ),
                               SizedBox(width: 10,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SizedBox(height: 3,),
                                   Text(
                                     "Walton Power",
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14,
                                         color: AppColor.mainColor
                                     ),
                                   ),
                                   SizedBox(height: 3,),
                                   Text(
                                     "ID:436575",
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14,
                                         color: AppColor.idColor
                                     ),
                                   ),
                                 ],
                               ),
                               SizedBox(width: 20,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   SizedBox(height: 3,),
                                   Text(
                                     "",
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14,
                                         color: AppColor.mainColor
                                     ),
                                   ),
                                   SizedBox(height: 3,),
                                   Text(
                                     "\$1000",
                                     style: TextStyle(
                                         fontWeight: FontWeight.bold,
                                         fontSize: 14,
                                         color: AppColor.idColor
                                     ),
                                   ),
                                 ],
                               )

                             ],
                           ),
                           Divider(thickness: 2, color: Colors.grey.withOpacity(0.5),)
                         ],
                       ),
                     );
                   },
                ),
              ),
            ),
            SizedBox(height: h*0.04,),
            Column(
              children: [
                Text(
                  "Total Amount",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColor.idColor
                  ),
                ),
                SizedBox(height: h*0.01,),
                Text(
                  "\$2000",
                  style: TextStyle(
                      fontSize: 25,
                      color: AppColor.mainColor,
                    fontWeight: FontWeight.w600
                  ),
                ),

              ],
            ),
            SizedBox(height: h*0.13,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonWithText(
                  icon: Icons.share_sharp,
                  backgroundColor: AppColor.mainColor,
                  iconColor: Colors.white,
                  text: "share",
                  textColor: AppColor.mainColor,
                ),
                SizedBox(width: w*0.1,),
                IconButtonWithText(
                  icon: Icons.print_outlined,
                  backgroundColor: AppColor.mainColor,
                  iconColor: Colors.white,
                  text: "print",
                  textColor: AppColor.mainColor,
                )
              ],
            ),
            SizedBox(height: h*0.04,),
            GestureDetector(
              onTap: (){
                //Navigator.pop(context);
                Get.back();
              },
              child: LargeButton(
                text: "Done",
                backgroundColor: Colors.white,
              ),
            )

          ],
        ),
      ),

    );
  }
}
