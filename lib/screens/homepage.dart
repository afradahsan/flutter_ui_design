import 'package:flutter/material.dart';
import 'package:flutter_internship_ui/widgets/payment_widget.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 0.435*screenHeight,
              width: screenWidth,
              decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('lib/assets/gold_texture_figma_to_ui.png')), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45),bottomRight: Radius.circular(45))),
              child: Padding(
                padding: EdgeInsets.all(0.083*screenWidth),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.menu, color: Colors.white,),
                          SizedBox(width: 10,),
                          Text('Good Evening,\nDevon', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w600),),
                        ],
                      ),
                      Icon(Iconsax.notification5, color: Colors.white, size: 20,)
                    ],),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.white, fixedSize: const Size(146, 70), shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))), child: const Text('Send', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)),
                        const SizedBox(width: 5),
                        ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.black, fixedSize: const Size(146, 70), shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))), child: const Text('Request', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),)
                      ],  
                    )
                  ],
                ),
              ),
            ),
      
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text('History', style: TextStyle(fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.bold),),
                Text('View all', style: TextStyle(fontFamily: 'Poppins', fontSize: 14, fontWeight: FontWeight.w600),)
              ],),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {
                return const Paymentwidget();
              },
              itemCount: 4,
              ),
            )
          ],),
        )
      ),
    );
  }
}