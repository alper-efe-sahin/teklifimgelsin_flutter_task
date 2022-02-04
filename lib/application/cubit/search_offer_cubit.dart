import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_offer_state.dart';
part 'search_offer_cubit.freezed.dart';

class SearchOfferCubit extends Cubit<SearchOfferState> {
  SearchOfferCubit()
      : super(const SearchOfferState.initial(amount: 1000, maturity: 3));

  void setTotalAmount(double value) {
    emit(state.copyWith(amount: value));
  }

  void setTotalMaturity(double value) {
    if (value > 50000) {
      emit(state.copyWith(maturity: 24));
    } else {
      emit(state.copyWith(maturity: value));
    }
  }

  double calculateMonthlyPayment({required interestRate, required maturity}) {
    final rate = interestRate;
    final expiry = maturity;
    double totalInterestRate = rate * 0.012;
    double monthlyPayment = (state.amount *
            totalInterestRate *
            pow((1 + totalInterestRate), expiry)) /
        (pow((1 + totalInterestRate), expiry) - 1);
    return monthlyPayment;
  }
}
