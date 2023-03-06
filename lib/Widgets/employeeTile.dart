import 'package:flutter/material.dart';
import 'package:mypos_test/Models/employee.dart';
import 'package:mypos_test/Screens/employeeDetailsScreen.dart';
import 'package:mypos_test/Widgets/widgets.dart';
import 'package:mypos_test/service.dart';
import 'package:http/http.dart' as http;
import '../Constants/globalVariable.dart';

class EmployeeTile extends StatefulWidget {
  final ApiService apiService = ApiService();
  final String empName;
  final String empNo;
  final String empAddressLine1;
  final String empAddressLine2;
  final String empAddressLine3;
  final String departmentCode;
  final String salary;
  final String dob;

  EmployeeTile({
    Key? key,
    required this.empName,
    required this.empNo,
    required this.empAddressLine1,
    required this.empAddressLine2,
    required this.empAddressLine3,
    required this.departmentCode,
    required this.salary,
    required this.dob,
  }) : super(key: key);

  @override
  _EmployeeTileState createState() => _EmployeeTileState();
}

class _EmployeeTileState extends State<EmployeeTile> {
  final String token = "?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextScreen(
            context,
            EmployeeDetails(
              empName: widget.empName,
              empNo: widget.empNo,
              empAddressLine1: widget.empAddressLine1,
              empAddressLine2: widget.empAddressLine2,
              empAddressLine3: widget.empAddressLine3,
              departmentCode: widget.departmentCode,
              salary: widget.salary,
              dob: widget.dob,
            ));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0.2,
                  blurRadius: 5,
                  offset: const Offset(0.0, 5.0))
            ]),
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.empName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            delete(widget.empNo);
                          });
                          ;
                        },
                        icon: Icon(Icons.delete)),
                  ],
                )
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Works at ${widget.departmentCode} Department',
                  style: TextStyle(fontSize: 13),
                ),
              ],
            )),
      ),
    );
  }

  Future delete(String id) async {
    final http.Response response = await http.delete(
      Uri.parse('http://examination.24x7retail.com/api/v1.0/Employee/$id'),
      headers: {"apiToken": token},
    );

    if (response.statusCode == 200) {
      print('succese');
    } else {
      print('no');
      throw Exception('Failed to delete album.');
    }
  }
}
