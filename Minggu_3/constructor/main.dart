import 'employee.dart';

void main(List<String> args){
    var data1 = new Employee.id(1);
    var data2 = new Employee.name("Yoga Andrian");
    var data3 = new Employee.department("Mobile Development");

    print("ID : " + data1.id.toString());
    print("Nama : " + data2.name);
    print("Department : " + data3.department);
}

