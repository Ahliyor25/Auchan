import 'package:auchan/ui/theme/app_button_style.dart';
import 'package:auchan/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'otp.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 32),
                scrollDirection: Axis.vertical,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                physics: BouncingScrollPhysics(),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child: GestureDetector(
                      //     onTap: () => Navigator.pop(context),
                      //     child: Icon(
                      //       Icons.arrow_back,
                      //       size: 32,
                      //       color: Colors.black54,
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(
                      //   height: 18,
                      // ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: AppColors.red.withOpacity(0.05),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'images/logo.png',
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      const Text(
                        'Авторизация',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Укажите номер телефона чтобы войти или стать клиентом "Ашан" ',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        padding: const EdgeInsets.all(28),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            TextFormField(
                              scrollController: ScrollController(),
                              enableInteractiveSelection: false,
                              scrollPhysics:
                                  const NeverScrollableScrollPhysics(),
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.go,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                prefix: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    '(+992)',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(10)),

                                // suffixIcon: Icon(
                                //   Icons.check_circle,
                                //   color: Colors.green,
                                //   size: 32,
                                // ),
                              ),
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => const Otp()),
                                  );
                                },
                                style: AppButtonStyle.linkButton,
                                child: const Padding(
                                  padding: EdgeInsets.all(14.0),
                                  child: Text(
                                    'Send',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
