import 'package:assigment_1/src/core/constants/images.dart';
import 'package:assigment_1/src/data/viewmodel/first_screen_viewmodel.dart';
import 'package:assigment_1/src/presentation/global_widgets/custom_alertDialog.dart';
import 'package:assigment_1/src/presentation/global_widgets/custom_button.dart';
import 'package:assigment_1/src/presentation/global_widgets/custom_form_field.dart';
import 'package:assigment_1/src/presentation/modules/first_screen/widgets/first_screen_padding.dart';
import 'package:assigment_1/src/presentation/modules/first_screen/widgets/first_screen_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<FirstScreenViewModel>(
          builder: (context,viewmodel,child) {
            return Stack(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage(DefaultImages.firstScreenBackground), fit: BoxFit.cover,),
                    )
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0,
                            MediaQuery.of(context).size.height * 0.25,
                            0,
                            MediaQuery.of(context).size.height * 0.05
                        ),
                        child:  IconButton(
                            onPressed: () {
                              showDialog(context: context, builder: (BuildContext context){
                                return CustomAlertDialog(data: AppLocalizations.of(context)!.firstScreenAlertDialogProfile);
                              });
                            },
                            icon:  ImageIcon(
                              const AssetImage(DefaultImages.firstScreenProfilePicture),
                              size: MediaQuery.of(context).size.height * 0.14,
                              color: Colors.white,
                            )
                        ),
                      ),
                      FirstScreenPadding(
                          verticalMargin: 10,
                          widget: Form(
                              key: _formKey,
                              child: CustomFormField(
                                hintText: AppLocalizations.of(context)!.firstScreenTextfieldHint_1,
                                validator: (val) {
                                  if (val!.isEmpty) return AppLocalizations.of(context)!.firstScreenTextfieldNullAlert_1;
                                  return null;
                                },
                                onChanged: (value) {
                                  viewmodel.name = value;
                                },
                              )
                          )
                      ),
                      FirstScreenPadding(
                          verticalMargin: 10,
                          widget: FirstScreenTextField(
                            onChanged: (value) {
                              viewmodel.palindromText = value;
                            },
                          )
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                      FirstScreenPadding(
                          verticalMargin: 5,
                          widget: SizedBox(
                              width: double.infinity,
                              child: CustomButton(
                                onPressed: () {
                                  viewmodel.checkPalindrome(context);
                                  showDialog(context: context, builder: (BuildContext context){
                                    return CustomAlertDialog(data: viewmodel.message);
                                  });
                                },
                                buttonText: AppLocalizations.of(context)!.firstScreenButton_1,
                              )
                          )
                      ),
                      FirstScreenPadding(
                          verticalMargin: 5,
                          widget: SizedBox(
                              width: double.infinity,
                              child: CustomButton(
                                onPressed: () {
                                  if(_formKey.currentState!.validate()) {
                                    Navigator.of(context).pushNamed('/secondScreen',arguments: viewmodel.name);
                                  }
                                },
                                buttonText: AppLocalizations.of(context)!.firstScreenButton_2,
                              )
                          )
                      )

                    ],
                  ),
                )
              ],
            );
          }
        )
    );
  }
}