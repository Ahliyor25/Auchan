import 'package:flutter/material.dart';

import 'package:flip_card/flip_card.dart';
import 'package:flutter_barcode/barcode/model/barcode.dart';
import 'package:flutter_barcode/barcode/presenter/barcode_paint.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';
import 'package:olucha_kids/ui/themes/font_style.dart';

class LoyatyCard extends StatelessWidget {
  const LoyatyCard({Key? key}) : super(key: key);

  renderContent(context) {
    final width = MediaQuery.of(context).size.width;

    return Card(
      color: AppColors.bgGrey,
      elevation: 0.0,
      child: FlipCard(
        direction: FlipDirection.HORIZONTAL,
        speed: 900,
        onFlipDone: (status) {
          // ignore: avoid_print
          print(status);
        },
        front: Container(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 0, bottom: 10),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                height: MediaQuery.of(context).size.width / 2.8,
                width: MediaQuery.of(context).size.width / 1.8,
              ),
              Row(
                children: [
                  Text(
                    'КЛУБНАЯ КАРТА',
                    style: FontStyles.cardTitle,
                  ),
                  const Expanded(
                    child: SizedBox(
                      width: 0,
                    ),
                  ),
                  Text(
                    'www.auchan.ru',
                    style: FontStyles.cardTitle,
                  )
                ],
              )
            ],
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ColoredBox(
                  color: AppColors.dark.withOpacity(0.8),
                  child: const SizedBox(
                    width: double.infinity,
                    height: 32,
                  ),
                ),
              ),
              BarcodePaint(
                Barcode.nw7('4001121210000'),
                // or Barcode.nw7("<...>")
                size: Size(width, 55),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                child: Row(
                  children: [
                    DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.red.withOpacity(0.01),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(28.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.wallet_giftcard,
                                size: 18,
                                color: AppColors.red,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                "25",
                                style: FontStyles.giftValue,
                              ),
                            ],
                          ),
                        )),
                    const Expanded(
                      child: SizedBox(
                        width: 1,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "+992 48 888 4004",
                          style: FontStyles.infoCard,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "www.schiever.tj",
                          style: FontStyles.infoCard,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return renderContent(context);
  }
}
