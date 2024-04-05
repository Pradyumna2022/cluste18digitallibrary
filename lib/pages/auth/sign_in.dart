// import 'dart:ffi';
// import 'dart:io';
// import 'package:digital_library/pages/nested_page.dart';
// import 'package:digital_library/widgets/my_button.dart';
// import 'package:digital_library/widgets/my_text_field.dart';
// import 'package:flutter/material.dart';

// File? imageFile;

// class SignInPage extends StatefulWidget {
//   const SignInPage({super.key});

//   @override
//   State<SignInPage> createState() => _SignInPageState();
// }

// class _SignInPageState extends State<SignInPage> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final nameController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();

//   /// CREATE A METHOD FOR USER EMAIL AND PASSWORD ALSO TAKE IMAGE FOR -------
//   // void singin(String email, String password) async {
//   //   if (email.isEmpty && password.isEmpty && imageFile == null) {
//   //     ToastClass().showToastMessage('Please Enter required Fields');
//   //   } else {
//   //     UserCredential? userCredential;
//   //     try {
//   //       userCredential = await FirebaseAuth.instance
//   //           .createUserWithEmailAndPassword(email: email, password: password)
//   //           .then((value) {
//   //         uploadImageFirebase();
//   //       }).onError((error, stackTrace) {
//   //         print(error.toString() +
//   //             '---------------------- create user credencial time error --------------------');
//   //       });
//   //     } catch (e) {}
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//           key: _formKey,
//           child: Center(
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'S I G N  I N',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 15),
//                       child: MyTextField(
//                         controller: nameController,
//                         hintText: 'Name',
//                         validationText: 'Enter Your Name',
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10.0, top: 10),
//                       child: MyTextField(
//                         controller: emailController,
//                         hintText: 'Email',
//                         validationText: 'Enter Your Email',
//                       ),
//                     ),
//                     MyTextField(
//                       obscureText: true,
//                       controller: passwordController,
//                       hintText: 'Password',
//                       validationText: 'Enter Your Password',
//                     ),
//                     MyButton(
//                       title: 'Signin',
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => NestedPage()));
//                         }
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           )),
//     );
//   }
// }

// Copyright 2024 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/// This file contain sample payment configurations that can be used with the
/// payment providers in this library.
///
/// Although payment configurations can be hardcoded in your application source
/// (as displayed in this example), we recommend you to keep this information in
/// a remote location that can be accessed from your application (e.g.: a
/// backend server). That way, you benefit from being able to use multiple
/// payment configurations that can be modified without the need to update your
/// application.
library;

/// Sample configuration for Apple Pay. Contains the same content as the file
/// under `assets/default_payment_profile_apple_pay.json`.
const String defaultApplePay = '''{
  "provider": "apple_pay",
  "data": {
    "merchantIdentifier": "merchant.com.sams.fish",
    "displayName": "Sam's Fish",
    "merchantCapabilities": ["3DS", "debit", "credit"],
    "supportedNetworks": ["amex", "visa", "discover", "masterCard"],
    "countryCode": "US",
    "currencyCode": "USD",
    "requiredBillingContactFields": ["emailAddress", "name", "phoneNumber", "postalAddress"],
    "requiredShippingContactFields": [],
    "shippingMethods": [
      {
        "amount": "0.00",
        "detail": "Available within an hour",
        "identifier": "in_store_pickup",
        "label": "In-Store Pickup"
      },
      {
        "amount": "4.99",
        "detail": "5-8 Business Days",
        "identifier": "flat_rate_shipping_id_2",
        "label": "UPS Ground"
      },
      {
        "amount": "29.99",
        "detail": "1-3 Business Days",
        "identifier": "flat_rate_shipping_id_1",
        "label": "FedEx Priority Mail"
      }
    ]
  }
}''';

/// Sample configuration for Google Pay. Contains the same content as the file
/// under `assets/default_payment_profile_google_pay.json`.
const String defaultGooglePay = '''{
  "provider": "google_pay",
  "data": {
    "environment": "TEST",
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "tokenizationSpecification": {
          "type": "PAYMENT_GATEWAY",
          "parameters": {
            "gateway": "example",
            "gatewayMerchantId": "gatewayMerchantId"
          }
        },
        "parameters": {
          "allowedCardNetworks": ["VISA", "MASTERCARD"],
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "billingAddressRequired": true,
          "billingAddressParameters": {
            "format": "FULL",
            "phoneNumberRequired": true
          }
        }
      }
    ],
    "merchantInfo": {
      "merchantId": "01234567890123456789",
      "merchantName": "Example Merchant Name"
    },
    "transactionInfo": {
      "countryCode": "US",
      "currencyCode": "USD"
    }
  }
}''';

const String basicGooglePayIsReadyToPay = '''{
  "provider": "google_pay",
  "data": {
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "parameters": {
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "allowedCardNetworks": ["AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA"]
        }
      }
    ]
  }
}''';

const String basicGooglePayLoadPaymentData = '''{
  "provider": "google_pay",
  "data": {
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "merchantInfo": {
      "merchantName": "Example Merchant"
    },
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "parameters": {
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "allowedCardNetworks": ["AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA"]
        },
        "tokenizationSpecification": {
          "type": "PAYMENT_GATEWAY",
          "parameters": {
            "gateway": "example",
            "gatewayMerchantId": "exampleGatewayMerchantId"
          }
        }
      }
    ],
    "transactionInfo": {
      "totalPriceStatus": "FINAL",
      "totalPrice": "12.34",
      "currencyCode": "USD"
    }
  }
}''';

const String invalidGooglePayIsReadyToPay = '''{
  "provider": "google_pay",
  "data": {
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "parameters": {}
      }
    ]
  }
}''';

const String invalidGooglePayLoadPaymentData = '''{
  "provider": "google_pay",
  "data": {
    "apiVersion": 2,
    "apiVersionMinor": 0,
    "merchantInfo": {
      "merchantName": "Example Merchant"
    },
    "allowedPaymentMethods": [
      {
        "type": "CARD",
        "parameters": {
          "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
          "allowedCardNetworks": ["AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA"]
        },
        "tokenizationSpecification": {
          "type": "PAYMENT_GATEWAY",
          "parameters": {
            "gateway": "example",
            "gatewayMerchantId": "exampleGatewayMerchantId"
          }
        }
      }
    ],
    "transactionInfo": {
      "totalPriceStatus": "FINAL",
      "totalPrice": "12.34",
      "currencyCode": "USD"
    }
  }
}''';
