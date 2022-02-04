import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teklifimgelsin_flutter_task/application/cubit/search_offer_cubit.dart';
import 'package:teklifimgelsin_flutter_task/domain/api/api_post_request.dart';
import 'package:teklifimgelsin_flutter_task/presentation/pages/details_screen.dart';

class ResultPageBody extends StatelessWidget {
  const ResultPageBody(BuildContext context, {Key? key, required this.state})
      : super(key: key);

  final SearchOfferState state;

  @override
  Widget build(BuildContext context) {
    final _postRequest = PostRequest().postData(
        amount: state.amount.toInt(), maturity: state.maturity.toInt());

    if (state.amount > 50000 && state.maturity > 24) {
      return Center(
        child: Card(
          elevation: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 2,
            child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "For values ​​over 100000, you can only make madurity up to 24 months (BDDK).",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                )),
          ),
        ),
      );
    } else {
      return Center(
        child: Card(
          elevation: 10,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 1.2,
            height: MediaQuery.of(context).size.height / 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FutureBuilder(
                  future: _postRequest,
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                "Your Results",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Id: ${snapshot.data["id"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Amount: ${snapshot.data["amount"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
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
                                          "Total Offers: ${snapshot.data["total_offers"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Maturity: ${snapshot.data["maturity"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
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
                                          "Type: ${snapshot.data["type"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Created At: ${snapshot.data["created_at"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
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
                                          "Car Condition: ${snapshot.data["car_condition"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        Text(
                                          "Client Id: ${snapshot.data["client_id"]}",
                                          style: const TextStyle(
                                              fontSize: 17.5,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 14,
                                  ),
                                  TextButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.redAccent),
                                        minimumSize:
                                            MaterialStateProperty.all<Size>(
                                                const Size(250, 50))),
                                    onPressed: () {
                                      routeToDetailsScreen(context, snapshot);
                                    },
                                    child: const Text(
                                      "See Details",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      }
                    }
                    return const Center(child: CircularProgressIndicator());
                  }),
            ),
          ),
        ),
      );
    }
  }
}

void routeToDetailsScreen(BuildContext context, AsyncSnapshot snapshot) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (newContext) => BlocProvider.value(
              value: BlocProvider.of<SearchOfferCubit>(context),
              child: DetailsPage(
                snapshotData: snapshot,
              ),
            )),
  );
}
