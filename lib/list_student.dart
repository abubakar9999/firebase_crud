import 'package:firebase_firestor/update.dart';
import 'package:flutter/material.dart';
 

class List_Student extends StatefulWidget {
  const List_Student({Key? key}) : super(key: key);

  @override
  State<List_Student> createState() => _List_StudentState();
}

class _List_StudentState extends State<List_Student> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(child: Text("List Of student",style: Theme.of(context).textTheme.headline2,)),

        SingleChildScrollView(

          child: Column(
            children: <Widget>[
              Table(
                border: TableBorder.all(),
                columnWidths: {
                  1:FixedColumnWidth(140),
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      TableCell(child: Container(
                        color: Colors.greenAccent,
                        child: Center(child: Text("Name",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)))),
                      TableCell(child: Container(
                        color: Colors.greenAccent,
                        child: Center(child: Text("Email",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)))),
                      TableCell(child: Container(
                        color: Colors.greenAccent,
                        child: Center(child: Text("Action",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),)))),
                    ]
                  ),
                  TableRow(
                    children: [
                      TableCell(child: Container(
                        
                        child: Center(child: Text("Name",style: TextStyle(
                          fontSize: 16,
                        
                        ),)))),
                      TableCell(child: Container(
                        
                        child: Center(child: Text("Email",style: TextStyle(  
                          fontSize: 16,
                        
                        ),)))),
                      TableCell(child: Container(
                        
                        child:Row(
                          children: <Widget>[
                                      IconButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateStudent()));
                                      }, icon: Icon(Icons.edit)),
                                      IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                              ],
                        )
                        )
                        ),
                    ]
                  ),
                  
                ],
              ),

            ],
          ),
        )

      ],
    );
    
  }
}