class LoanModel {
  LoanModel({
    required this.amount,
    required this.maturity,
    this.type = 0,
    this.offerCount = 0,
  });

  final int amount;
  final int maturity;
  final int type;
  final int offerCount;
}
