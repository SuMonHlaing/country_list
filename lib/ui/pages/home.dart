
import 'package:country_list/ui/widget/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/model/country_list_model.dart';
import '../../state/country_list_notifier.dart';
import '../../state/country_list_state.dart';
import '../widget/country_list_view.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final countryNotifierProvider = NotifierProvider<CountryListNotifier,CountryListState>(
      (){
        return CountryListNotifier();
      }
  );
  CountryListNotifier? countryListNotifier;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      countryListNotifier?.getCountryList();
    });
  }
  @override
  Widget build(BuildContext context) {
    countryListNotifier =ref.read(countryNotifierProvider.notifier);
    final countryListState = ref.watch(countryNotifierProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Country List'),
      ),
      body: switch(countryListState){
        CountryListLoading()=> const Center(child: CircularProgressIndicator()),
        CountryListSuccess(countryList : List<CountryListModel> countryList) => CountryListView(countryList: countryList,),
        CountryListFailed(errorMessage : String error) => FailedWidget(error: error,tryAgain: (){
          countryListNotifier?.getCountryList();
        },),
      },
    );
  }
}
