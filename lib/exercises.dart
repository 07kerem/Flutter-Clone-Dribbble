// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class exercises extends StatelessWidget {
  final Icon icons;
  final String exercisesName;
  final int numberOfExcersises;
  final Color colors;
  const exercises({
    Key? key,
    required this.exercisesName,
    required this.numberOfExcersises,
    required this.icons,
    required this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: colors,
                    padding: EdgeInsets.all(16),
                    child: icons,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(exercisesName,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      numberOfExcersises.toString() + 'exercises',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
