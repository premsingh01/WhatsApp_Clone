import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/common/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {

  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
    }
    );
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Enter Your Phone Number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('whatsapp will need to verify your number'),
            const SizedBox(height: 10),
            TextButton(
                onPressed: pickCountry,
                child: const Text('Pick a Country'),
            ),
           const SizedBox(height: 10,),
            Row(
              children: [
                if(country != null)
                  Text('+${country!.phoneCode}'),


                const SizedBox(width: 10,),
                SizedBox(
                  width: size.width*0.75,
                  child: TextField(
                    controller: phoneController,
                    decoration: const InputDecoration(
                      hintText: 'phone number',
                    ),
                  ),
                ),
              ],
            ),

            //SizedBox(height: size.height*0.6),
            Spacer(),
            SizedBox(
              width: 90,
              child: CustomButton(
                  text: 'Next',
                  onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
