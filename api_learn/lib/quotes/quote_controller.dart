import 'package:get/get.dart';
import "package:api_learn/quotes/quote_model.dart";
import 'package:api_learn/quotes/quote_service.dart';

class QuoteController extends GetxController {
  RxList<Quote> quotes = RxList.empty();

  fetchDetails() {
    QuoteService.fetchQuote();
  }
}
