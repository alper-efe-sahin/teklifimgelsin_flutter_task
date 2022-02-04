import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teklifimgelsin_flutter_task/application/cubit/search_offer_cubit.dart';
import 'package:teklifimgelsin_flutter_task/presentation/constants/slider_theme.dart';
import 'package:teklifimgelsin_flutter_task/presentation/pages/result_page.dart';

Widget SearchPageBody(BuildContext context) {
  return BlocBuilder<SearchOfferCubit, SearchOfferState>(
    builder: (context, state) {
      return Center(
        child: Card(
          elevation: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Loan Calculator",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TotalAmount(context, state.amount),
                      TotalMaturity(context, state.maturity),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "₺${state.amount.round()} ${state.maturity.round()} months term",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.blue),
                      ),
                      TextButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.redAccent),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(250, 50))),
                        onPressed: () {
                          routeToResultScreen(context);
                        },
                        child: const Text(
                          "TeklifimGelsin",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

void routeToResultScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (newContext) => BlocProvider.value(
              value: BlocProvider.of<SearchOfferCubit>(context),
              child: const ResultPage(),
            )),
  );
}

Widget TotalAmount(context, amount) {
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Amount: ₺${amount.round().toString()}",
            style: const TextStyle(fontSize: 17.5),
          ),
          TotalAmountSlider(context, amount)
        ],
      ));
}

Widget TotalMaturity(context, maturity) {
  return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Time of the Maturity: ${maturity.round().toString()} Months",
            style: const TextStyle(fontSize: 17.5),
          ),
          TimeOfTheMaturity(context, maturity)
        ],
      ));
}

SliderTheme TotalAmountSlider(BuildContext context, amount) {
  return SliderTheme(
      data: sliderThemeData(context),
      child: Slider(
        value: amount,
        min: 1000,
        max: 100000,
        divisions: 100,
        label: amount.round().toString(),
        onChanged: (value) {
          final convertedValue = (value * 100).round() / 100;
          context.read<SearchOfferCubit>().setTotalAmount(convertedValue);
        },
      ));
}

SliderTheme TimeOfTheMaturity(BuildContext context, maturity) {
  return SliderTheme(
      data: sliderThemeData(context),
      child: Slider(
        value: maturity,
        min: 3,
        max: 36,
        divisions: 33,
        label: maturity.round().toString(),
        onChanged: (value) {
          final convertedValue = (value * 100).round() / 100;
          context.read<SearchOfferCubit>().setTotalMaturity(convertedValue);
        },
      ));
}
