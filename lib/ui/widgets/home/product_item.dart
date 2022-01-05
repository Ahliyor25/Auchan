import 'package:flutter/material.dart';
import 'package:olucha_kids/ui/themes/app_button_style.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';
import 'package:olucha_kids/ui/themes/font_style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.lightBlue.withOpacity(0.6),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Image(
                image: AssetImage('images/product.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    "Jacobs Monarch – 100% натуральный кофе",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: FontStyles.TitleProduct,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "30 сом / шт",
                            style: FontStyles.desCartCount,
                          ),
                          SizedBox(height: 5),
                          Text("30 сом", style: FontStyles.title),
                        ],
                      ),
                      Expanded(child: SizedBox(width: 1)),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("-", style: TextStyle(fontSize: 20)),
                          style: AppButtonStyle.countProduct,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Column(
                        children: [
                          Text("1", style: FontStyles.title),
                          Text("шт",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.dark.withOpacity(0.4),
                                  height: 0.8)),
                        ],
                      ),
                      const SizedBox(width: 4),
                      SizedBox(
                        width: 32,
                        height: 32,
                        child: ElevatedButton(
                          onPressed: () {},
                          child:
                              const Text("+", style: TextStyle(fontSize: 20)),
                          style: AppButtonStyle.countProduct,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
