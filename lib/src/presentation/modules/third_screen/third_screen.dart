import 'package:assigment_1/src/core/styles/color.dart';
import 'package:assigment_1/src/core/styles/text_style.dart';
import 'package:assigment_1/src/data/model/user_response.dart';
import 'package:assigment_1/src/data/viewmodel/third_screen_viewmodel.dart';
import 'package:assigment_1/src/presentation/global_widgets/custom_back_button.dart';
import 'package:assigment_1/src/presentation/modules/third_screen/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {

  final PagingController<int, Datum> _pagingController = PagingController(firstPageKey: 0);
  late ThirdScreenViewModel viewModel;

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    viewModel = Provider.of<ThirdScreenViewModel>(context,listen: false);
    _pagingController.addPageRequestListener((pageKey) {
      viewModel.fetchPage(pageKey).then((items) {
        if(items.isEmpty) {
          _pagingController.appendLastPage(items);
        } else {
          _pagingController.appendPage(items, pageKey + 1);
        }
      });
    });
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.thirdScreenAppBar,style: appBarTitleTextStyle),
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
      body: Consumer<ThirdScreenViewModel>(
        builder: (context,viewmodel,child) {
          return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              child: PagedListView<int, Datum>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<Datum>(
                  itemBuilder: (context, item, index) => ListItem(item: item),
                  firstPageErrorIndicatorBuilder: (context) => Center(
                    child: Text(AppLocalizations.of(context)!.thirdScreen_1),
                  ),
                  noItemsFoundIndicatorBuilder: (context) => Center(
                    child: Text(AppLocalizations.of(context)!.thirdScreen_2),
                  ),
                  noMoreItemsIndicatorBuilder: (context) => Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 0),
                      child: Text(AppLocalizations.of(context)!.thirdScreen_3,style: textStyle.bodyLarge),
                    ),
                  ),
                ),
              ),
          );
        }
      )
    );
  }
}