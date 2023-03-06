import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mypos_test/Models/employee.dart';
import '../service.dart';

class AddEmployeePage extends StatefulWidget {
  const AddEmployeePage({Key? key}) : super(key: key);

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  final String token = "?D(G+KbPeSgVkYp3s6v9y\$B&E)H@McQf";
  final ApiService apiService = ApiService();
  final TextEditingController regNo = TextEditingController();
  final TextEditingController empName = TextEditingController();
  final TextEditingController addLine1 = TextEditingController();
  final TextEditingController addLine2 = TextEditingController();
  final TextEditingController addLine3 = TextEditingController();
  final TextEditingController depCode = TextEditingController();
  final TextEditingController joinDate = TextEditingController();
  final TextEditingController birthDay = TextEditingController();
  final TextEditingController salary = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ADD EMPLOYEE")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: regNo,
                decoration: InputDecoration(
                    hintText: 'Registration Number',
                    prefixIcon: Icon(Icons.app_registration),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: empName,
                decoration: InputDecoration(
                    hintText: 'Name',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: addLine1,
                decoration: InputDecoration(
                    hintText: 'Address Line 1',
                    prefixIcon: Icon(Icons.location_city_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: addLine2,
                decoration: InputDecoration(
                    hintText: 'Address Line 2',
                    prefixIcon: Icon(Icons.location_city_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: addLine3,
                decoration: InputDecoration(
                    hintText: 'Address Line 3',
                    prefixIcon: Icon(Icons.location_city_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: depCode,
                decoration: InputDecoration(
                    hintText: 'Department Code',
                    prefixIcon: Icon(Icons.code),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: joinDate,
                decoration: InputDecoration(
                    hintText: 'Join Date',
                    prefixIcon: Icon(Icons.date_range_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: birthDay,
                decoration: InputDecoration(
                    hintText: 'Date of Birth',
                    prefixIcon: Icon(Icons.date_range_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: salary,
                decoration: InputDecoration(
                    hintText: 'Basic Salary',
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    )),
              ),
              SizedBox(
                height: 17,
              ),
              ElevatedButton(
                  onPressed: () {
                    addEmployee();
                  },
                  child: Text(
                    "ADD",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  addEmployee() {
    apiService.addEmployee(
        context: context,
        empNo: regNo.toString(),
        empName: empName.toString(),
        empAddressLine1: addLine1.toString(),
        empAddressLine2: addLine2.toString(),
        empAddressLine3: addLine3.toString(),
        departmentCode: depCode.toString(),
        dateOfJoin: joinDate.toString(),
        dateOfBirth: birthDay.toString(),
        basicSalary: 20,
        isActive: true);
  }
}
