import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:google_fonts/google_fonts.dart';
class Graph1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<chartdata> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: SfCartesianChart(
        margin: EdgeInsets.all(5),
        title: ChartTitle(
          text: '   \n My Top Fixed Items',
          alignment: ChartAlignment.near,
          textStyle: TextStyle(fontSize: 13,fontFamily: GoogleFonts.mulish().fontFamily,),
        ),
        legend: Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          BarSeries<chartdata, String>(
              name: 'Top',
              dataSource: _chartData,
              xValueMapper: (chartdata gdp, _) => gdp.continent,
              yValueMapper: (chartdata gdp, _) => gdp.gdp,
              width: 0.4,
              pointColorMapper: (chartdata data, _) => data.color,
              dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true,
              sortingOrder: SortingOrder.ascending,
              sortFieldValueMapper: (chartdata data, _) => data.gdp)
        ],
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          //to hide whole axis
          isVisible: false,
          // To hide the axis label alone
          borderColor: Colors.red,
          labelStyle: const TextStyle(fontSize: 0,),
          //title: AxisTitle(text: 'GDP in billions of U.S. Dollars')),
        ),
      ),
    )));
  }

  List<chartdata> getChartData() {
    final List<chartdata> chartData = [
      chartdata('Server Point', 10000, Colors.blue),
      chartdata('USB Flash Drive', 2560, Colors.blue),
      chartdata('JB Office Print', 1420, Colors.blue),
      chartdata('JB Office print', 1111, Colors.blue),
      chartdata('Rainbow Color Printer', 5000, Colors.blue),
    ];
    return chartData;
  }
}

class chartdata {
  chartdata(this.continent, this.gdp, this.color);
  final String continent;
  final double gdp;
  final Color? color;
}
