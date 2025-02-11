import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonLoader extends StatelessWidget {
  const SkeletonLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                color: Colors.grey[300],
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 100,
                          height: 14,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 14,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 60,
                          height: 14,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 14,
                          color: Colors.grey[300],
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 60,
                          height: 14,
                          color: Colors.grey[300],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
