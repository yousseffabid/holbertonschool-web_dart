import '4-util.dart';
import 'dart:convert';

calculateTotal() async {
  try {
    var user_id = jsonDecode(await fetchUserData())['id'];
    var order = await fetchUserOrders(user_id);
    List<dynamic> product_list = jsonDecode(order);
    var price = 0.0;

    for (int i = 0; i < product_list.length; i++) {
      var pri = await fetchProductPrice(product_list[i]);
      price += num.parse(pri);
    }

    return price;
  } catch (e) {
    return -1;
  }
}