import 'package:flutter/widgets.dart';
import 'Assignment.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

// ignore: camel_case_types
class HomePage extends StatelessWidget {
  final List<charts.Series<Task, String>> _seriesPieData = [];
  final List<Task> data = [
    Task("Maths", 3, Color.fromRGBO(50, 10, 250, 1.0)),
    Task("Science", 2, Color.fromRGBO(50, 150, 50, 2.0)),
    Task("SocialStudies", 5, Color.fromRGBO(200, 50, 50, 1.0)),
    Task("English", 1, Color.fromRGBO(70, 200, 250, 1.5)),
    Task("Sanskrit", 5, Color.fromRGBO(200, 70, 200, 3.0)),
  ];
  _generateData(data1) {
    // _seriesPieData = List<charts.Series<Task, String>>();
    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.taskDetails,
        measureFn: (Task task, _) => task.taskVal,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorVal),
        id: 'tasks',
        data: data1,
        labelAccessorFn: (Task row, _) => "${row.taskVal}",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _generateData(data);
    return ListView(
      padding: EdgeInsets.all(20.0),
      shrinkWrap: true,
      children: [
        //Padding(padding: EdgeInsets.all()),
        Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Expanded(
            child: charts.PieChart(_seriesPieData,
                animate: true,
                animationDuration: Duration(seconds: 1),
                behaviors: [
                  new charts.DatumLegend(
                    outsideJustification:
                        charts.OutsideJustification.endDrawArea,
                    horizontalFirst: false,
                    desiredMaxRows: 2,
                    cellPadding:
                        new EdgeInsets.only(right: 4.0, bottom: 4.0, top: 4.0),
                    entryTextStyle: charts.TextStyleSpec(
                        color: charts.MaterialPalette.purple.shadeDefault,
                        fontFamily: 'Georgia',
                        fontSize: 18),
                  )
                ],
                defaultRenderer: new charts.ArcRendererConfig(
                    arcWidth: 100,
                    arcRendererDecorators: [
                      new charts.ArcLabelDecorator(
                          labelPosition: charts.ArcLabelPosition.inside)
                    ])),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Color.fromRGBO(143, 148, 251, 0.9),
          ),
          child: GridView.count(
            primary: false,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              mycard(context, "Pending"),
              mycard(context, "Completed"),
              mycard(context, "Marks"),
              mycard(context, "MyTest"),
            ],
          ),
        ),
      ],
    );

    //color: Color.fromRGBO(146, 87, 225, 3.0),

    /* GridView.count(
          primary: false,
          crossAxisCount: 2,
          children: [
            mycard("Pending"),
            mycard("Completed"),
            mycard("Marks"),
            mycard("MyTest"),
          ],
        )*/
    //padding: EdgeInsets.all(8.0),
  }
}

//List<String> names = ["Pending", "Completed", "Marks", "MyTest"];

Widget mycard(BuildContext context, String mytext) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Assignments()),
      );
    },
    child: Container(
      margin: EdgeInsets.all(20.0),
      //color: Colors.white70,
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color.fromRGBO(255, 255, 255, 2.0),
      ),
      child: Center(
        //padding :
        child: Text(mytext),
      ),
    ),
  );
}

class Task {
  final int taskVal;
  final String taskDetails;
  final Color colorVal;
  Task(this.taskDetails, this.taskVal, this.colorVal);
}
