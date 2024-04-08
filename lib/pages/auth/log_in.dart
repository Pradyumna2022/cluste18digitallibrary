// import 'package:digital_library/pages/nested_page.dart';
// import 'package:digital_library/widgets/my_button.dart';
// import 'package:digital_library/widgets/my_text_field.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool isVisible = false;
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final _formKey = GlobalKey<FormState>();
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
//                     const Text(
//                       'W E L C O M E  B A C K',
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 10.0, top: 35),
//                       child: MyTextField(
//                         controller: emailController,
//                         hintText: 'Email',
//                         validationText: 'Enter Your Email',
//                       ),
//                     ),
//                     if (!isVisible)
//                       MyTextField(
//                         obscureText: isVisible,
//                         controller: passwordController,
//                         hintText: 'Password',
//                         validationText: 'Enter Your Password',
//                       ),
//                     if (!isVisible)
//                       MyButton(
//                         title: 'Login',
//                         onPressed: () {
//                           try {
//                             if (_formKey.currentState!.validate()) {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => NestedPage()));
//                             }
//                           } catch (e) {
//                             print(e.toString());
//                           }
//                         },
//                       ),
//                     if (isVisible)
//                       MyButton(
//                         title: 'Forgot Password',
//                         onPressed: () {
//                           print('object');
//                           if (_formKey.currentState!.validate()) {}
//                         },
//                       ),
//                     if (!isVisible)
//                       GestureDetector(
//                         onTap: () {
//                           print('FORGOT PASSWORD');
//                           setState(() {
//                             isVisible = true;
//                           });

//                           /// FORGOT PASSWORD HERE FUNCTION **************
//                         },
//                         child: Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 10),
//                           decoration: BoxDecoration(
//                               color: Colors.black12,
//                               border:
//                                   Border.all(color: Colors.white, width: 0.1),
//                               borderRadius: BorderRadius.circular(10)),
//                           margin: const EdgeInsets.only(top: 20),
//                           child: Text(
//                             "Forgot Password ?",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                         ),
//                       )
//                   ],
//                 ),
//               ),
//             ),
//           )),
//     );
//   }
// }

// import 'dart:io';

// import 'package:digital_library/pages/auth/sign_in.dart';
// import 'package:flutter/material.dart';
// import 'package:pay/pay.dart';

// class ddd extends StatefulWidget {
//   const ddd({super.key});

//   @override
//   State<ddd> createState() => _dddState();
// }

// class _dddState extends State<ddd> {
//   String andro = Platform.operatingSystem;
//   final googlePlayButton = GooglePayButton(
//     paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
//     paymentItems: [
//       PaymentItem(
//           amount: '300', status: PaymentItemStatus.final_price, label: 'Total'),
//     ],
//     width: double.infinity,
//     type: GooglePayButtonType.pay,
//     margin: EdgeInsets.only(top: 20),
//     onPaymentResult: (result) => debugPrint('Payment Result $result'),
//     loadingIndicator: Center(
//       child: CircularProgressIndicator(),
//     ),
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Platform.isAndroid ? googlePlayButton : Text('No data found !'),
//       ),
//     );
//   }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class ReceiptForm extends StatefulWidget {
  @override
  _ReceiptFormState createState() => _ReceiptFormState();
}

class _ReceiptFormState extends State<ReceiptForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController shiftController = TextEditingController();
  final TextEditingController signatureController = TextEditingController();

  String shiftData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: addressController,
                decoration: InputDecoration(labelText: 'Address'),
              ),
              TextField(
                controller: mobileController,
                decoration: InputDecoration(labelText: 'Mobile No.'),
              ),
              TextField(
                controller: shiftController,
                decoration: InputDecoration(labelText: 'Shift'),
                onChanged: (value) {
                  setState(() {
                    shiftData = value;
                  });
                },
              ),
              TextField(
                controller: signatureController,
                decoration: InputDecoration(labelText: 'Candidate Signature'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _generateReceipt();
                },
                child: Text('Generate Receipt'),
              ),
              SizedBox(height: 20.0),
              if (shiftData.isNotEmpty)
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Name: ${nameController.text}'),
                      Text('Address: ${addressController.text}'),
                      Text('Mobile No.: ${mobileController.text}'),
                      Text('Shift: ${shiftController.text}'),
                      Text('Candidate Signature: ${signatureController.text}'),
                    ],
                  ),
                ),
              SizedBox(height: 20.0),
              if (shiftData.isNotEmpty)
                ElevatedButton(
                  onPressed: () {
                    _generateFile();
                    print('$_generateFile() -------------');
                  },
                  child: Text('Download Receipt File'),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _generateReceipt() {
    // You can generate the receipt here if needed
  }

  void _generateFile() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/receipt.txt');
    await file.writeAsString('...'); // Write receipt content

    // Now that the file is written, open it
    await OpenFile.open(file.path);
  }
}
