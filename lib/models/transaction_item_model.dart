class TransactionModel {
  final String title, subtitle, amount;
  final bool isDrawal;

  const TransactionModel(
      {required this.title,
      required this.subtitle,
      required this.amount,
      required this.isDrawal});
}
