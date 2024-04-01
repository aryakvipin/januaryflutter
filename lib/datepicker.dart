
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(home: Datepickereg(),));
}
class Datepickereg extends StatefulWidget{
  @override
  State<Datepickereg> createState() => _DatepickeregState();
}

class _DatepickeregState extends State<Datepickereg> {
  DateTime selectdate=DateTime.now();
  @override
  Widget build(BuildContext context) {
 return Scaffold(
    body: Center(
      child: TextField(
        controller: TextEditingController(text: "${selectdate.toLocal()}".split(" ")[0]),
        readOnly: true,
        onTap:()=> selectedate(context),
        decoration: InputDecoration(hintText: "select date"
          ,suffixIcon: Icon(Icons.calendar_month)

        ),

      ),
    ),
 );
  }
  Future<void>selectedate(BuildContext context)async{
    final DateTime ? pickdate=await
    showDatePicker(context: context,
        firstDate: DateTime(2022), lastDate: DateTime(2025));
    if(pickdate!=null && pickdate !=selectdate) {
      setState(() {
        selectdate = pickdate;
      });
    }
  }
}