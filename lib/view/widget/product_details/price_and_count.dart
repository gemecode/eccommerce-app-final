import 'package:final_project/core/constant/colors.dart';
import 'package:flutter/material.dart';

class PriceAndCountItems extends StatelessWidget {
  // final void Function() onAdd;
  // final void Function() onRemove;
  // final String count;
  final String price;
  const PriceAndCountItems({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        // Row(
        //   children: [
        //     IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
        //     Container(
        //       alignment: Alignment.topCenter,
        //       padding: const EdgeInsets.only(bottom: 2),
        //       width: 50,
        //       decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        //       child: Text(count, style: const TextStyle(fontSize: 20, height: 1.1),), ),
        //     IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
        //   ],
        // ),
        const Spacer(),
        Text("$price", style: const TextStyle(color: AppColor.primaryColor, fontSize: 30, height: 1.1),),
      ],
    );
  }
}
