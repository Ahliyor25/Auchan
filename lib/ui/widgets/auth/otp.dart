import 'package:flutter/material.dart';
import 'package:olucha_kids/ui/themes/app_button_style.dart';
import 'package:olucha_kids/ui/themes/app_colors.dart';
import 'package:olucha_kids/ui/widgets/main_screen/main_screen_widget.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'Введите 4-значный код',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Мы отправили код на номер +99299999999",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        // _textFieldOTP(first: true, last: false),
                        // _textFieldOTP(first: false, last: false),
                        // _textFieldOTP(first: false, last: false),
                        // _textFieldOTP(first: false, last: true),
                      ],
                    ),
                    TextField(
                      controller: _controller,
                      autofocus: true,
                      decoration: const InputDecoration(
                        hintText: 'Введите код',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 4,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const MainScreenWidget()),
                          );
                        },
                        style: AppButtonStyle.linkButton,
                        child: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Продолжить',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Text(
                        'Отправить код повторно',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height * 0.6,
              ),
            ],
          ),
        ),
      )),
    );
  }
}

//   Widget _textFieldOTP({bool? first, last}) {
//     return SizedBox(
//       height: 65,
//       child: AspectRatio(
//         aspectRatio: 1.0,
//         child: TextField(
//           autofocus: true,
//           onChanged: (value) {
//             if (value.length == 1 && last == false) {
//               FocusScope.of(context).nextFocus();
//             }
//             if (value.isEmpty && first == false) {
//               FocusScope.of(context).previousFocus();
//             }
//           },
//           showCursor: false,
//           readOnly: false,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           keyboardType: TextInputType.phone,
//           maxLength: 1,
//           decoration: InputDecoration(
//             counter: const Offstage(),
//             enabledBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: Colors.black12),
//                 borderRadius: BorderRadius.circular(12)),
//             focusedBorder: OutlineInputBorder(
//                 borderSide: const BorderSide(width: 2, color: AppColors.red),
//                 borderRadius: BorderRadius.circular(12)),
//           ),
//         ),
//       ),
//     );
//   }
// }
