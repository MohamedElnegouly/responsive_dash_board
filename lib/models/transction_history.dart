class TransctionHistory {
  final String title, date, amount;
  final bool isWithdrawal;

  const TransctionHistory(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawal});
}
