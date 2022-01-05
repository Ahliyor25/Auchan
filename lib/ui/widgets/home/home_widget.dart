import 'package:flutter/material.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';
import 'package:olucha_kids/ui/widgets/home/cart_title.dart';
import 'package:olucha_kids/ui/widgets/home/loyaty_card_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olucha_kids/ui/widgets/home/product_cart.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgGrey,
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.15),
        title: Text('Главная',
            style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColors.dark)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: AppColors.dark),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              LoyatyCard(),
              SizedBox(height: 13),
              CartTitle(),
              SizedBox(height: 13),
              ProductCart()
            ],
          ),
        ),
      ),
    );
  }
}
