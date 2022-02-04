import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teklifimgelsin_flutter_task/application/cubit/search_offer_cubit.dart';
import 'package:teklifimgelsin_flutter_task/presentation/widgets/search_page_widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => SearchOfferCubit(),
      child: Scaffold(
          backgroundColor: Colors.amber[500], body: SearchPageBody(context)),
    );
  }
}
