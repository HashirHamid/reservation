import 'package:flutter/material.dart';
import 'package:my_new_app/custom_bottom_bar.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        selectedIndex: selectedIndex,
        indexSelectionCallback: (value) => setState(() {
          selectedIndex = value;
        }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Color(0xFFC75E28),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        child: Image.asset("assets/menu.png"),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            30,
                          ),
                        ),
                        child: Image.asset("assets/bell.png"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Marriot Hotel Islamabad",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.amber,
                      ),
                      Text(
                        "4.9 | 48 reviews",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Taking Reservations",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Switch(
                      value: false,
                      onChanged: (v) {},
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                DropdownButton(
                  items: const [],
                  onChanged: (s) {},
                  hint: const Text(
                    "Up Coming Reservations",
                    style: TextStyle(color: Color(0xFFC75E28), fontSize: 18),
                  ),
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xFFC75E28),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      showBottomBorder: false,
                      dividerThickness: 0.0000000000000000001,
                      headingRowColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.grey.shade100),
                      columns: columns
                          .map((e) => DataColumn(
                                  label: Text(
                                e,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )))
                          .toList(),
                      rows: [
                        dataRow(),
                        dataRow(),
                        dataRow(),
                        dataRow(),
                        dataRow(),
                        dataRow(),
                        dataRow(),
                      ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  DataRow dataRow() {
    return const DataRow(cells: [
      DataCell(Text(
        "01",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "Kamran Shah",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "02",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "17/10/2024",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "11:59 pm",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "Terrace",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "Noodles",
        style: TextStyle(fontSize: 16),
      )),
      DataCell(Text(
        "Birthday",
        style: TextStyle(fontSize: 16),
      )),
    ]);
  }
}

const columns = [
  "S.No",
  "Name",
  "Person",
  "Date",
  "Time",
  "Sitting",
  "Deals",
  "Additional Note"
];
