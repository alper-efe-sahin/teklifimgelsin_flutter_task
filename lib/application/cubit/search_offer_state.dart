part of 'search_offer_cubit.dart';

@freezed
class SearchOfferState with _$SearchOfferState {
  const factory SearchOfferState.initial(
      {required double amount, required double maturity}) = _Initial;
}
