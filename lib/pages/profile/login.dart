import 'package:exam/language/change_language.dart';
import 'package:exam/pages/profile/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true, btnCheck = false;
  bool memPass = true;
  TextStyle dartStyle = dartTextStyleMainColor;
  TextEditingController userName = TextEditingController();
  TextEditingController pwd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            // resizeToAvoidBottomInset: false,

            body: Stack(
              children: [
                Center(
                  child: Container(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 40, left: 40),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  // ignore: sized_box_for_whitespace
                                  // Container(
                                  //   height: 130,
                                  //   width: 130,
                                  //  child: Image.asset('assets/images/nbb.png'),
                                  // ),
                                  Text(
                                    // 'NAYOBY BANK'.tr,
                                    'LOGO',
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 20,
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  controller: userName,
                                  // onChanged: (value) {
                                  //   userName.text = value;
                                  //   userName.selection =
                                  //       TextSelection.fromPosition(TextPosition(
                                  //           offset: userName.text.length));
                                  // },
                                  // controller: userName,
                                  style: dartStyle.copyWith(height: 2),
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    // fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10,
                                    ),
                                    hintText: 'User',
                                    hintStyle: const TextStyle(
                                        height: 2, color: Colors.blue),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: lightColor,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: lightColor,
                                      ),
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: appColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                TextField(
                                  onChanged: (value) {
                                    pwd.text = value;
                                  },
                                  style: dartStyle.copyWith(height: 2),
                                  obscureText: _isObscure,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    // fillColor: Colors.white,
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                      vertical: 10,
                                    ),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: appColor,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                    ),
                                    hintText: 'Password',
                                    hintStyle: const TextStyle(
                                        height: 1, color: Colors.blue),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: lightColor,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      borderSide: const BorderSide(
                                        color: lightColor,
                                      ),
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.vpn_key_rounded,
                                      color: appColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Checkbox(
                                              // checkColor: appColor,
                                              side: const BorderSide(
                                                // ======> CHANGE THE BORDER COLOR HERE <======
                                                color: Colors.grey,
                                                // Give your checkbox border a custom width
                                                width: 1.5,
                                              ),
                                              activeColor: appColor,
                                              value: memPass,
                                              onChanged: (_) {
                                                setState(() {
                                                  memPass
                                                      ? memPass = false
                                                      : memPass = true;
                                                });
                                              }),
                                          const Text(
                                            'Remember',
                                            style: TextStyle(
                                              color: appColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                // ignore: sized_box_for_whitespace
                                Container(
                                  width: 200,
                                  height: 50,
                                  child: AbsorbPointer(
                                    absorbing: btnCheck,
                                    child: TextButton(
                                      onPressed: () async {
                                        FocusScope.of(context).unfocus();
                                        setState(() {
                                          btnCheck == false
                                              ? btnCheck = true
                                              : btnCheck = false;
                                        });
                                        // ignore: avoid_print

                                        // await getLoginUser();
                                      },
                                      child: Container(
                                          margin: const EdgeInsets.all(5),
                                          child: btnCheck == false
                                              ? Text(
                                                  'Login'.tr,
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                )
                                              : Container(
                                                  height: 20,
                                                  width: 20,
                                                  child:
                                                      const CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                                Color>(
                                                            Colors.white),
                                                  ),
                                                )),
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(appColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Align(
                //     alignment: Alignment.topRight,
                //     child: Container(
                //         width: 75,
                //         height: 55,
                //         decoration: BoxDecoration(
                //           color: bgwhite,
                //           borderRadius: BorderRadius.circular(5),
                //           border: Border.all(color: bgwhite),
                //         ),
                //         margin: const EdgeInsets.only(top: 20, right: 20),
                //         child: InkWell(
                //           onTap: () {
                //             ChangeLanguage().ChangeLanguages(context: context);
                //           },
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: const [
                //               Icon(
                //                 Icons.language,
                //                 // color: appColor,
                //                 size: 30,
                //               ),
                //               SizedBox(height: 1),
                //               Text(
                //                 'language',
                //                 // style: TextStyle(color: appColor),
                //               ),
                //             ],
                //           ),
                //         ))),
              ],
            )),
      ),
    );
  }
}
