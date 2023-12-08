import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("Information")),

        //backgroundColor: Colors.white,
        drawer:  Drawer(
          //backgroundColor: Colors.tealAccent,
          child: Container(
            padding: const EdgeInsets.all(15),
            child: ListView(children: [
              Row(children: [
                Container(
                  width: 80,
                  height: 80,

                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.asset("images/yemen.jpg",fit:BoxFit.cover,)),

                ),
                const Expanded(child: ListTile(
                  title:Text("Sonia Hood"),
                  subtitle: Text("son123ia@gmail.com"),
                ))

              ],),
              ListTile(
                title:Text("homebage") ,
                leading: Icon(Icons.home),
                onTap: (){
                },),
              ListTile(
                title:Text("homebage") ,
                leading: Icon(Icons.home),
                onTap: (){
                },),
              ListTile(
                title:Text("account") ,
                leading: Icon(Icons.account_balance_rounded),
                onTap: (){
                },),
              ListTile(
                title:Text("order") ,
                leading: Icon(Icons.check_box),
                onTap: (){
                },),
              ListTile(
                title:Text("about as") ,
                leading: Icon(Icons.help),
                onTap: (){
                },),
              ListTile(
                title:Text("contact as") ,
                leading: Icon(Icons.phone_android_outlined),
                onTap: (){
                },),
              ListTile(
                title:Text("signout") ,
                leading: Icon(Icons.exit_to_app),
                onTap: (){
                },),
            ]
            ),
          ),

        ),

        //endDrawer: Drawer(),

        body:MyStatefulWidget(),
      ),

    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int? _selectedValue;
  bool male=false;
  bool female=false;

  void _handleRadioValueChanged(int? value) {

    setState(() {
      _selectedValue = value;

    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        const Text("choose your country ",style: TextStyle(fontSize: 20),),
        RadioListTile<int>(

          title: Text('Egypt'),
          value: 1,
          groupValue: _selectedValue,
          onChanged: _handleRadioValueChanged,
        ),
        RadioListTile<int>(
          title: const Text('Yemen'),
          value: 2,
          groupValue: _selectedValue,
          onChanged: _handleRadioValueChanged,
        ),
        RadioListTile<int>(
          title: const Text('Kuwait'),
          value: 3,
          groupValue: _selectedValue,
          onChanged: _handleRadioValueChanged,
        ),
        Text("choose your country ",style: TextStyle(fontSize: 20),),
        CheckboxListTile(
            title: Text("male"),
            value: male, onChanged: (val){
          setState(() {
            male=val!;
          });
        }),
        CheckboxListTile(
            title: Text("female"),
            value: female, onChanged: (val){
          setState(() {
            female=val!;
          });

        }),








      ],
    );
  }
}

