import 'package:flutter/material.dart';

class EmployeeDetails extends StatefulWidget {
  final String empName;
  final String empNo;
  final String empAddressLine1;
  final String empAddressLine2;
  final String empAddressLine3;
  final String departmentCode;
  final String salary;
  final String dob;

  const EmployeeDetails(
      {required this.empName,
      required this.empNo,
      required this.empAddressLine1,
      required this.empAddressLine2,
      required this.empAddressLine3,
      required this.departmentCode,
      required this.salary,
      required this.dob,
      super.key});

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.empName)),
        body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(1.0),
                      spreadRadius: 0.2,
                      blurRadius: 5,
                      offset: const Offset(0.0, 5.0))
                ]),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'empNo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Department Code',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Address Line01',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Address Line02',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Address Line03',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'DOB',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Salary',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.empNo,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.departmentCode,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.empAddressLine1,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.empAddressLine2,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.empAddressLine3,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.dob,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        widget.salary,
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}
