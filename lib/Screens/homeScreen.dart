import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mypos_test/Screens/addEmployeeScreen.dart';
import 'package:mypos_test/Widgets/widgets.dart';

import '../Models/employee.dart';
import '../Widgets/employeeTile.dart';
import '../service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  late List<Employee> _employeeModel = [];
  String empName = "";
  String empNo = "";
  String empAddressLine1 = "";
  String empAddressLine2 = "";
  String empAddressLine3 = "";
  String departmentCode = "";
  DateTime dateOfBirth = DateTime.now();
  int basicSalary = 0;
  bool isActive = false;
  bool _isLoading = false;
  @override
  void initState() {
    _getData();
    super.initState();
  }

  _getData() async {
    _employeeModel = (await ApiService().getEmployees())!.cast<Employee>();
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyPOS EMPLOEES'),
        centerTitle: true,
      ),
      body: employeeList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          nextScreen(context, AddEmployeePage());
        },
        child: Icon(Icons.add),
      ),
    );
  }

  employeeList() {
    return ListView.builder(
      itemCount: _employeeModel.length,
      itemBuilder: (context, index) {
        return EmployeeTile(
          empName: _employeeModel[index].empName.toString(),
          empNo: _employeeModel[index].empNo.toString(),
          empAddressLine1: _employeeModel[index].empAddressLine1.toString(),
          empAddressLine2: _employeeModel[index].empAddressLine2,
          empAddressLine3: _employeeModel[index].empAddressLine3,
          departmentCode: _employeeModel[index].departmentCode.toString(),
          salary: _employeeModel[index].basicSalary.toString(),
          dob: _employeeModel[index].dateOfBirth.toString(),
        );
      },
    );
  }
}
