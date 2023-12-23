import 'package:assigment_1/src/core/styles/color.dart';
import 'package:assigment_1/src/core/styles/text_style.dart';
import 'package:assigment_1/src/data/viewmodel/second_screen_viewmodel.dart';
import 'package:assigment_1/src/presentation/global_widgets/custom_back_button.dart';
import 'package:assigment_1/src/presentation/global_widgets/custom_button.dart';
import 'package:assigment_1/src/presentation/modules/second_screen/widgets/second_screen_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {
  final String name;
  const SecondScreen({super.key, required this.name});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_){
      context.read<SecondScreenViewModel>().name =
          AppLocalizations.of(context)!.secondScreen_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.secondScreenAppBar,style: appBarTitleTextStyle),
        centerTitle: true,
          leading: const CustomBackButton(),
          bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
             color: appBarBorderColor,
             height: 1,
           ),
        )
      ),
      body: Consumer<SecondScreenViewModel>(
        builder: (context,viewmodel,child) {
            return Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                SecondScreenPadding(
                    widget: Text(AppLocalizations.of(context)!.secondScreen_1,style: Theme.of(context).textTheme.bodyLarge)
                ),
                SecondScreenPadding(
                  widget: Text(widget.name,style: secondScreenName),
                ),
                const Expanded(child: SizedBox()),
                Text((viewmodel.name == null) ? '' : viewmodel.name! ,style: secondScreenSelectedName),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  child: SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                        onPressed: () async {
                          final result = await Navigator.pushNamed(context, '/thirdScreen');
                          if (result != null) {
                            viewmodel.name = result.toString();
                          }
                        },
                        buttonText: AppLocalizations.of(context)!.secondScreen_3
                    ),
                  ),
                )
              ],
            );
        }
      )
    );
  }
}