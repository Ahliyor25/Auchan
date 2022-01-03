import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';

class PromotionListWidget extends StatefulWidget {
  const PromotionListWidget({Key? key}) : super(key: key);

  @override
  State<PromotionListWidget> createState() => _PromotionListWidgetState();
}

class _PromotionListWidgetState extends State<PromotionListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.15),
        title: Text('Акции',
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
      body: Stack(children: [
        const SizedBox(
          height: 30,
        ),
        ListView.builder(
          itemCount: 6,
          itemExtent: 260,
          scrollDirection: Axis.vertical,
          addAutomaticKeepAlives: true,
          clipBehavior: Clip.hardEdge,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.1)),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                    Container(
                      width: double.infinity,
                      height: 136,
                      decoration: const BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        image: DecorationImage(
                          image: AssetImage('images/01.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      child: Center(
                        child: Text(
                          "Умный подарок за покупку новой Яндекс Станции Мини",
                          style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white),
                          maxLines: 3,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("C 19 ноября по 20 декабря 2021",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blue)),
                          const SizedBox(height: 5),
                          Text(
                            "При покупке новой Яндекс Станции Мини вы можете выбрать один из трех «умных»...",
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: AppColors.dark),
                            maxLines: 2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          padding: const EdgeInsets.symmetric(horizontal: 10),
        ),
      ]),
    );
  }
}
