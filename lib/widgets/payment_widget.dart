import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class Paymentwidget extends StatefulWidget {
  const Paymentwidget({super.key});

  @override
  State<Paymentwidget> createState() => _PaymentwidgetState();
}

class _PaymentwidgetState extends State<Paymentwidget> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 0.43 * screenWidth,
      height: 0.17 * screenHeight,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/Black_texture.png'),
          fit: BoxFit.cover),
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                    AssetImage('lib/assets/Women_kaiya_image.png'),
                    radius: 15),
                  SizedBox(width: 5,),
                  Text('Kaiya', style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
                  ),
                ],
              ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('29/09/0001',
                    style: TextStyle(
                      color: Color.fromARGB(144, 255, 255, 255),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.w300
                    )
                  ),
                ],
              ),
          Row(
            children: [
              Icon(
                Symbols.add,
                color: Colors.white,
                size: 18,
                weight: 1000,
              ),
              Text(r'$250',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}