import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../core/styles/styles.dart';
import '../../core/utilities/sign_in_with_google.dart';
import '../../core/utilities/sing_in_with_base.dart';
import '../../core/widgets/header_title_widget.dart';
import '../../core/widgets/privacy_policy_and_terms_of_condition_widget.dart';
import '../../core/widgets/social_button_widget.dart';


const Color facebookColor = Color(0xff39579A);
const Color twitterColor = Color(0xff00ABEA);
const Color linkedinColor = Color(0xff0085E0);
const Color appleColor = Color(0xff202020);
const Color googleColor = Color(0xffDF4A32);

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ResponsiveSizer(
      maxMobileWidth: 650,
      builder: (context, orientation, screenType) {
        return Scaffold(
          backgroundColor: Colors.blueGrey[200],
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: Device.screenType == ScreenType.tablet
                    ? Adaptive.w(30)
                    : Adaptive.w(95), // size.width * 0.3:  size.width * 0.85,
                height: size.height * 0.9,
                padding: Device.screenType == ScreenType.tablet
                    ? const EdgeInsets.symmetric(horizontal: 20, vertical: 30)
                    : const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  padding: Device.screenType == ScreenType.tablet
                      ? const EdgeInsets.symmetric(horizontal: 0, vertical: 0)
                      : const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  children: [
                    getHeaderTitle(Container(
                      margin: EdgeInsets.all(5),
                      child: Icon(
                        Icons.account_box_rounded,
                        color: Styles.defaultBlueColor,
                        size: 100,
                      ),
                    ),"Giriş Sayfası", ""),
                    privacyPolicyAndTermsOfConditionWidget(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    SocialButtonWidgets.socialButtonRect('Google ile giriş',
                        googleColor, FontAwesomeIcons.googlePlusG,
                        onTap: () => singInWithBase(context, signInWithGoogle)),

                    SocialButtonWidgets.socialButtonRect('Facebook ile giriş',
                        facebookColor, FontAwesomeIcons.facebookF, onTap: () {
                      Fluttertoast.showToast(
                          msg:
                              'FACEBOOK ile giriş yakında eklenecektir. Google ile sisteme giriş yapabilirsiniz.',
                          timeInSecForIosWeb: 5);
                    }),
                    SocialButtonWidgets.socialButtonRect('LinkedIn ile giriş',
                        linkedinColor, FontAwesomeIcons.linkedinIn, onTap: () {
                      Fluttertoast.showToast(
                          msg:
                              'LINKEDIN ile giriş yakında eklenecektir. Google ile sisteme giriş yapabilirsiniz.',
                          timeInSecForIosWeb: 5);
                    }),
                    SocialButtonWidgets.socialButtonRect(
                        'Github ile giriş', appleColor, FontAwesomeIcons.apple,
                        onTap: () {
                      Fluttertoast.showToast(
                          msg:
                              'Apple ile giriş yakında eklenecektir. Google ile sisteme giriş yapabilirsiniz.',
                          timeInSecForIosWeb: 5);
                    })
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
