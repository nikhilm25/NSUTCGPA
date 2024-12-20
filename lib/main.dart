import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NSUT Search App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'NSUT',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            fontFamily: 'RobotoCondensed',
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Roll Number',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 1.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: LineChart(
                                LineChartData(
                                  gridData: FlGridData(show: true),
                                  titlesData: FlTitlesData(
                                    show: true,
                                    leftTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          if (value >= 0 && value <= 10) {
                                            return Text(
                                              value.toInt().toString(),
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'RobotoCondensed',
                                                color: Colors.white,
                                              ),
                                            );
                                          }
                                          return Container();
                                        },
                                      ),
                                    ),
                                    bottomTitles: AxisTitles(
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          if (value >= 1 && value <= 8) {
                                            return Text(
                                              value.toInt().toString(),
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'RobotoCondensed',
                                                color: Colors.white,
                                              ),
                                            );
                                          }
                                          return Container();
                                        },
                                      ),
                                    ),
                                    topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                    rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                  ),
                                  borderData: FlBorderData(
                                    show: true,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                    ),
                                  ),
                                  minX: 1,
                                  maxX: 8,
                                  minY: 0,
                                  maxY: 10,
                                  lineBarsData: [
                                    LineChartBarData(
                                      isCurved: true,
                                      color: Colors.blue,
                                      barWidth: 4,
                                      isStrokeCapRound: true,
                                      belowBarData: BarAreaData(show: false),
                                      spots: [
                                        FlSpot(1, 6.5),
                                        FlSpot(2, 7.2),
                                        FlSpot(3, 7.8),
                                        FlSpot(4, 8.0),
                                        FlSpot(5, 8.5),
                                        FlSpot(6, 9.0),
                                        FlSpot(7, 8.7),
                                        FlSpot(8, 9.5),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'CGPA PER SEMESTER',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoCondensed',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Text(
                                    'OVERALL CGPA:',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoCondensed',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Text(
                                    '42.00',
                                    style: TextStyle(
                                      fontSize: 75,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'RobotoCondensed',
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[850],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 8,
                                  left: 8,
                                  child: Text(
                                    'RANK:',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'RobotoCondensed',
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 8,
                                  right: 8,
                                  child: Text(
                                    '6969',
                                    style: TextStyle(
                                      fontSize: 75,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'RobotoCondensed',
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
