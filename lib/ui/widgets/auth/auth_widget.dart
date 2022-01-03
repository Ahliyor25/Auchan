import 'package:flutter/material.dart';
import 'package:olucha_kids/ui/themes/app_button_style.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';


import 'otp.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  // Future<http.Response> sendSms(String title) async {
  //   var uname = 'ACfc3d1ca24a20de9462c749169d183431';
  //   var pword = '30de964742645a87de3f6d160c85615a';
  //   var authn =
  //       'Basic ' + convert.base64Encode(convert.utf8.encode('$uname:$pword'));

  //   var data = {
  //     'From': '+13082183252',
  //     'Body': 'Hi there',
  //     'To': title,
  //   };

  //   var res = await http.post(
  //       Uri.parse(
  //           'https://api.twilio.com/2010-04-01/Accounts/ACfc3d1ca24a20de9462c749169d183431/Messages.json'),
  //       headers: {'Authorization': authn},
  //       body: data);
  //   if (res.statusCode != 201) {
  //     throw Exception('http.post error: statusCode= ${res.statusCode}');
  //   }
  //   return res;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 32),
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        'Укажите номер телефона чтобы войти',
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
                        height: MediaQuery.of(context).size.height * 0.6,
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
                                        const BorderSide(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.black12),
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
