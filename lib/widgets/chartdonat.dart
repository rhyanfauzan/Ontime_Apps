import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ChartDonat extends StatefulWidget {
  const ChartDonat({ Key? key }) : super(key: key);

  @override
  State<ChartDonat> createState() => _ChartDonatState();
}

class _ChartDonatState extends State<ChartDonat> {

  late List<TaskData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfCircularChart(
          series: <CircularSeries>[
            DoughnutSeries<TaskData, String>(
              dataSource: _chartData,
              xValueMapper: (TaskData data, _) => data.task,
              yValueMapper: (TaskData data, _) => data.progress,
              pointColorMapper: (TaskData data, _) => data.color
            )
          ],
        )
      ],
    );
  }

  List<TaskData> getChartData(){
    final List<TaskData> chartData = [
      TaskData('Reading', 20, Colors.blue),
      TaskData('Coding', 80, Colors.grey)
    ];
    return chartData;
  }
}

class TaskData {
  TaskData(this.task, this.progress, this.color);

  final String task;
  final int progress;
  final Color? color;
}