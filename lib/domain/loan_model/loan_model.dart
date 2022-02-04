class ExampleResponse {
  dynamic id;
  int? amount;
  dynamic createdAt;
  dynamic clientId;
  String? type;
  int? maturity;
  dynamic carCondition;
  int? totalOffers;
  List<Offers>? offers;

  ExampleResponse(
      {this.id,
      this.amount,
      this.createdAt,
      this.clientId,
      this.type,
      this.maturity,
      this.carCondition,
      this.totalOffers,
      this.offers});

  ExampleResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    createdAt = json['created_at'];
    clientId = json['client_id'];
    type = json['type'];
    maturity = json['maturity'];
    carCondition = json['carCondition'];
    totalOffers = json['total_offers'];
    if (json['offers'] != null) {
      offers = <Offers>[];
      json['offers'].forEach((v) {
        offers!.add(Offers.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['created_at'] = this.createdAt;
    data['client_id'] = this.clientId;
    data['type'] = this.type;
    data['maturity'] = this.maturity;
    data['carCondition'] = this.carCondition;
    data['total_offers'] = this.totalOffers;
    if (this.offers != null) {
      data['offers'] = this.offers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Offers {
  int? bankId;
  String? bank;
  double? interestRate;
  dynamic sponsoredRate;
  String? bankType;
  String? url;
  dynamic hypothecFee;
  dynamic expertise;
  dynamic annualRate;

  Offers(
      {this.bankId,
      this.bank,
      this.interestRate,
      this.sponsoredRate,
      this.bankType,
      this.url,
      this.hypothecFee,
      this.expertise,
      this.annualRate});

  Offers.fromJson(Map<String, dynamic> json) {
    bankId = json['bank_id'];
    bank = json['bank'];
    interestRate = json['interest_rate'];
    sponsoredRate = json['sponsored_rate'];
    bankType = json['bank_type'];
    url = json['url'];
    hypothecFee = json['hypothec_fee'];
    expertise = json['expertise'];
    annualRate = json['annual_rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bank_id'] = this.bankId;
    data['bank'] = this.bank;
    data['interest_rate'] = this.interestRate;
    data['sponsored_rate'] = this.sponsoredRate;
    data['bank_type'] = this.bankType;
    data['url'] = this.url;
    data['hypothec_fee'] = this.hypothecFee;
    data['expertise'] = this.expertise;
    data['annual_rate'] = this.annualRate;
    return data;
  }
}
