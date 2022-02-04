import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teklifimgelsin_flutter_task/application/cubit/search_offer_cubit.dart';
import 'package:teklifimgelsin_flutter_task/presentation/widgets/result_page_widgets.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);



  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[500],
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Results Screen",
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            backgroundColor: Colors.amber[800],
            leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context, true);
                })),
        body: BlocBuilder<SearchOfferCubit, SearchOfferState>(
          builder: (context, SearchOfferState state) {
            return ResultPageBody(context, state: state,);
          },
        ));
  }
}
