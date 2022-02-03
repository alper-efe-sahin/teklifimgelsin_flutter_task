import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_offer_state.dart';
part 'search_offer_cubit.freezed.dart';

class SearchOfferCubit extends Cubit<SearchOfferState> {
  SearchOfferCubit() : super(SearchOfferState.initial());
}
