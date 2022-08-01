import 'package:ecommerce_ui_design/data/data.dart';
import 'package:ecommerce_ui_design/models/order.dart';
import 'package:flutter/material.dart';

class RecentOrders extends StatelessWidget {
  const RecentOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Recent Orders',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 120.0,
          // color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: currentUser.orders.length,
              itemBuilder: (context, index) {
                Order order = currentUser.orders[index];
                return _buildRecentOrder(context, order);
              }),
        ),
      ],
    );
  }

  _buildRecentOrder(BuildContext context, Order order) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      width: 320.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 1.0, color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                  image: AssetImage(order.food.imageUrl),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${order.food.name}ass ass ass',
                        style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        order.restaurant.name,
                        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        order.date,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),),

          Container(
            margin: const EdgeInsets.only(right: 20.0),
            width: 48.0,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(30.0)),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              iconSize: 30.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
