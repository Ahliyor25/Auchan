import 'package:flutter/cupertino.dart';
import 'package:olucha_kids/ui/themes/font_style.dart';

class CartTitle extends StatelessWidget {
  const CartTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Корзина",
              style: FontStyles.title,
            ),
            const SizedBox(
              height: 4,
            ),
            Text("Кол-во продуктов: 12", style: FontStyles.desCartCount),
          ],
        ),
        const Expanded(
            child: SizedBox(
          width: 1,
        )),
        Text("Очистить", style: FontStyles.desCartCount),
      ],
    );
  }
}
