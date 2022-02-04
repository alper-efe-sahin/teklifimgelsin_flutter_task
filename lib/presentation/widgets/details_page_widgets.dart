import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teklifimgelsin_flutter_task/application/cubit/search_offer_cubit.dart';

Widget DetailsPageBody(
    BuildContext context, SearchOfferState state, AsyncSnapshot snapshotData) {
  return BlocBuilder<SearchOfferCubit, SearchOfferState>(
    builder: (context, state) {
      return ListView.builder(
          itemCount: snapshotData.data["offers"].length,
          itemBuilder: (BuildContext context, int index) {
            final int amount = snapshotData.data["amount"];
            final int maturity = snapshotData.data["maturity"];
            final String bankName = snapshotData.data["offers"][index]["bank"];
            final double interestRate =
                snapshotData.data["offers"][index]["interest_rate"];
            final annualExpenseRate =
                snapshotData.data["offers"][index]["annual_rate"].round();
            final monthlyPayment = context
                .read<SearchOfferCubit>()
                .calculateMonthlyPayment(
                    interestRate: snapshotData.data["offers"][index]
                        ["interest_rate"],
                    maturity: maturity)
                .toStringAsFixed(2);

            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Center(
                child: Card(
                  elevation: 10,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 4,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                "Bank Name: $bankName",
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Interest Rate: $interestRate",
                                        style: const TextStyle(
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Annual Expense Rate: $annualExpenseRate",
                                        style: const TextStyle(
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Amount: $amount",
                                        style: const TextStyle(
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Maturity: $maturity",
                                        style: const TextStyle(
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "Monthly Payment: $monthlyPayment",
                                        style: const TextStyle(
                                            fontSize: 14.5,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                ),
              ),
            );
          });
    },
  );
}
