import 'package:application/user_model.dart';
import 'package:application/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfessorInterface extends StatelessWidget {
  Users user;

  ProfessorInterface({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.light,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppTheme.accent,
        actions: [
          GestureDetector(
            onTap: () {
              // Handle profile section press
            },
            child: const CircleAvatar(
              backgroundImage:
                  AssetImage("assets\\Screenshot 2021-08-22 135451.png"),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
        title: const Text(
          "Professor Homepage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome, Dr. ${user.firstName}!', // Displaying professor's first name
                  style: const TextStyle(
                    fontSize: 40,
                  ),
                ),
              ],
            ),
            Expanded(
              // Wrap with Expanded
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lec # Attendance Records',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      DataTable(
                        columns: const [
                          DataColumn(
                            label: Text(
                              'ID',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Name',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Time',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Status',
                            ),
                          ),
                        ],
                        rows: const [
                          DataRow(
                            cells: [
                              DataCell(Text('221100986')),
                              DataCell(Text('Yassin Shebl')),
                              DataCell(Text('10:40')),
                              DataCell(Text('Attended')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('221100824')),
                              DataCell(Text('Reem Mahmoud')),
                              DataCell(Text('10:45')),
                              DataCell(Text('Attended')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('221101184')),
                              DataCell(Text('Salma Rafik')),
                              DataCell(Text('11:00')),
                              DataCell(Text('Late')),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(Text('221101112')),
                              DataCell(Text('Jana Abd El Ghany')),
                              DataCell(Text('12:20')),
                              DataCell(Text('Abscent')),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Today\'s schedule',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DataTable(
                        border: TableBorder.all(
                          color: Colors.grey,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        columns: const [
                          DataColumn(
                            label: Text(
                              'Lecture',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Time',
                            ),
                          ),
                          DataColumn(
                            label: Text(
                              'Location',
                            ),
                          ),
                        ],
                        rows: const [
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  'AIE123',
                                ),
                              ),
                              DataCell(
                                Text(
                                  '9:30 AM',
                                ),
                              ),
                              DataCell(
                                Text(
                                  'JCR301',
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  'CSE383',
                                ),
                              ),
                              DataCell(
                                Text(
                                  '10:40 AM',
                                ),
                              ),
                              DataCell(
                                Text(
                                  'JCR301',
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  'CSE323',
                                ),
                              ),
                              DataCell(
                                Text(
                                  '1:10 PM',
                                ),
                              ),
                              DataCell(
                                Text(
                                  'JCR301',
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            cells: [
                              DataCell(
                                Text(
                                  'AIE324',
                                ),
                              ),
                              DataCell(
                                Text(
                                  '2:50 PM',
                                ),
                              ),
                              DataCell(
                                Text(
                                  'JCR301',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
