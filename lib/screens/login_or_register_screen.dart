import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/sign_in_with_google.dart';
import '../widgets/header_title_widget.dart';
import '../widgets/privacy_policy_and_terms_of_condition_widget.dart';
import '../widgets/social_button_widget.dart';


const Color facebookColor = Color(0xff39579A);
const Color twitterColor = Color(0xff00ABEA);
const Color linkedinColor = Color(0xff0085E0);
const Color githubColor = Color(0xff202020);
const Color googleColor = Color(0xffDF4A32);

class LoginOrRegisterScreen extends StatefulWidget {
  const LoginOrRegisterScreen({Key? key}) : super(key: key);

  @override
  State<LoginOrRegisterScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginOrRegisterScreen> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        body: SizedBox(
              width: size.width,
              height: size.height,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: kIsWeb? size.width * 0.3:  size.width * 0.85,
                  height: kIsWeb? size.height * 0.95:  size.height * 0.8,
                  padding: kIsWeb?
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 30):
                  const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5) ,
                        children: [
                          getHeaderTitle('assets/images/login.png',
                              "Giriş Sayfası",
                              "Devam etmeden önce lütfen giriş yapın"),

                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),

                          SocialButtonWidgets.socialButtonRect(
                              'Google ile giriş', googleColor, FontAwesomeIcons.googlePlusG,
                              onTap: () async {
                                await signInWithGoogle();
                              }),
                          SocialButtonWidgets.socialButtonRect(
                              'Facebook ile giriş', facebookColor, FontAwesomeIcons.facebookF,
                              onTap: () {
                                Fluttertoast.showToast(msg: 'FACEBOOK ile giriş yakında eklenecektir. Google ile sisteme giriş yapabilirsiniz.',
                                    timeInSecForIosWeb: 5);
                              }),
                          SocialButtonWidgets.socialButtonRect(
                              'LinkedIn ile giriş', linkedinColor, FontAwesomeIcons.linkedinIn,
                              onTap: () {
                                Fluttertoast.showToast(msg: 'LINKEDIN ile giriş yakında eklenecektir. Google ile sisteme giriş yapabilirsiniz.',
                                timeInSecForIosWeb: 5);
                              }),
                          SocialButtonWidgets.socialButtonRect(
                              'Github ile giriş', githubColor, FontAwesomeIcons.github,
                              onTap: () {
                                Fluttertoast.showToast(msg: 'GITHUB ile giriş yakında eklenecektir. Google ile sisteme giriş yapabilirsiniz.',
                                    timeInSecForIosWeb: 5);
                              }),

                          privacyPolicyAndTermsOfConditionWidget()
                        ],
                      ),
                  ),
                ),
              ),
        );
  }
}