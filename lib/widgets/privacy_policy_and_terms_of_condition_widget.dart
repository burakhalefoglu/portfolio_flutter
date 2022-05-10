import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget privacyPolicyAndTermsOfConditionWidget() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.all(30),
    child: Center(
        child: Text.rich(
            TextSpan(
                text: 'Sitemizde devam ederek ', style: const TextStyle(
                fontSize: 12, color: Colors.black
            ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Kullanım koşullarını', style: const TextStyle(
                    fontSize: 16, color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // code to open / launch terms of service link here
                        }
                  ),
                  TextSpan(
                      text: ' ve ', style: const TextStyle(
                      fontSize: 12, color: Colors.black
                  ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Gizlilik Politikasını', style: const TextStyle(
                            fontSize: 16, color: Colors.black,
                            decoration: TextDecoration.underline
                        ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                // code to open / launch privacy policy link here
                              }
                        ),
                        const TextSpan(
                            text: ' kabul etmiş olursunuz.', style: TextStyle(
                            fontSize: 12, color: Colors.black
                          ),
                        )
                      ]
                  )
                ]
            )
        )
    ),
  );
}