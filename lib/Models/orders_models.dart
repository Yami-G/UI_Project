class OrdersModels {
  String id;
  String date;
  String totalPrice;
  String status;
  bool isTrack;

  OrdersModels({
    required this.id,
    required this.date,
    required this.totalPrice,
    required this.status,
    required this.isTrack,
  });
}
