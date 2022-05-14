// How transation should look likes
// just be a blue print

class Transaction {
  // final -> run time constant
  final String? id;
  final String? title;
  final double? amount;
  final DateTime? date;

  Transaction({this.id, this.title, this.amount, this.date});
}
