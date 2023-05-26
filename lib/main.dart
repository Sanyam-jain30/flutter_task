import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_task/LeadFirstPage.dart';

void main() {
  runApp(const MyApp());
}

List<Map<String, dynamic>> leadsData = [
  {
    "Name": "Prasad Kumar",
    "Id": "M3Am30025567",
    "Deal_amount": "10,29,00,000",
    "Income": "45,000",
    "Pincode": 506003,
    "Lead_status": "Docs Pending",
    "Loan_type": "Personal Loan"
  },
  {
    "Name": "Prasad Kumar",
    "Id": "M3Am30025567",
    "Deal_amount": "10,29,00,000",
    "Income": "45,000",
    "Pincode": 506003,
    "Lead_status": "Docs Pending",
    "Loan_type": "Personal Loan"
  },
  {
    "Name": "Prasad Kumar",
    "Id": "M3Am30025567",
    "Deal_amount": "10,29,00,000",
    "Income": "45,000",
    "Pincode": 506003,
    "Lead_status": "Docs Pending",
    "Loan_type": "Personal Loan"
  },
  {
    "Name": "Prasad Kumar",
    "Id": "M3Am30025567",
    "Deal_amount": "10,29,00,000",
    "Income": "45,000",
    "Pincode": 506003,
    "Lead_status": "Docs Pending",
    "Loan_type": "Personal Loan"
  },
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Leads'),
    );
  }
}

class MyAppNew extends StatelessWidget {
  const MyAppNew({super.key, required this.name, required this.pincode, required this.income, required this.dealAmount, required this.leadStatus, required this.loanType});

  final String name;
  final String pincode;
  final String income;
  final String dealAmount;
  final String leadStatus;
  final String loanType;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var r = Random();
    String id = "M3Am${r.nextInt(90000000) + 10000000}";
    if(name != "" && dealAmount != "" && income != "" &&  pincode != "" && leadStatus != "" && loanType != "") {
      leadsData.add({
        "Name": name,
        "Id": id,
        "Deal_amount": dealAmount,
        "Income": income,
        "Pincode": pincode,
        "Lead_status": leadStatus,
        "Loan_type": loanType
      });
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Leads'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff232939),
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              TabBar(
                indicatorColor: Color(0xffe3da95),
                tabs: [
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButtonClass(),
                        Text('Leads', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20)),
                        IconAddClass()
                      ],
                    ),
                  ),
                  Tab(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Team Leads', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10.0, left: 20.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffd9d9d9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Sort By', style: TextStyle(color: Colors.black)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon( // <-- Icon
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10.0, left: 20.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffd9d9d9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text('Filter By', style: TextStyle(color: Colors.black)),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon( // <-- Icon
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.black,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 20.0, top: 15.0),
                        child: const Icon(Icons.search, size: 24),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...List.generate(leadsData.length, (index) =>
                              Container(
                                margin: const EdgeInsets.only(bottom: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 10,
                                        offset: const Offset(0, 8),
                                        color: const Color(0x66000000).withOpacity(.4),
                                        spreadRadius: -12)
                                  ],
                                ),
                                child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: RotatedBox(
                                      quarterTurns: -1,
                                      child: Text('${leadsData[index]['Loan_type']}', style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16)),
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.white
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x3f000000),
                                                      blurRadius: 4,
                                                      offset: Offset(0, 2),
                                                    ),
                                                  ],
                                                ),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Text(leadsData[index]['Name'].toString(), style: const TextStyle(color: Color(0xff232939), fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
                                                    ),
                                                    Container(
                                                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                                        decoration: const BoxDecoration(
                                                          borderRadius: BorderRadius.only(
                                                              bottomLeft: Radius.circular(15.0),
                                                              topRight: Radius.circular(15.0)
                                                          ),
                                                          color: Color(0xff232939),
                                                        ),
                                                        child: Text(leadsData[index]['Id'].toString(), style: const TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold))
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.only(top: 12, bottom: 5),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          const Text("Deal Amount", style: TextStyle(color: Color(0xffb9a37a), fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.bold)),
                                                          Text('${leadsData[index]['Deal_amount']}', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16)),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          const Text("Income", style: TextStyle(color: Color(0xffb9a37a), fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.bold)),
                                                          Text('${leadsData[index]['Income']}', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16)),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          const Text("Pincode", style: TextStyle(color: Color(0xffb9a37a), fontFamily: 'Poppins', fontSize: 12, fontWeight: FontWeight.bold)),
                                                          Text('${leadsData[index]['Pincode']}', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16)),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                              ),
                                              Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 5),
                                                  child: Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      const Icon(Icons.phone, color: Color(0xffb9a37a)),
                                                      const Icon(Icons.sticky_note_2, color: Color(0xffb9a37a)),
                                                      const Text("Lead status :", style: TextStyle(color: Color(0xffb9a37a), fontFamily: 'Poppins', fontSize: 12)),
                                                      Text('${leadsData[index]['Lead_status']}', style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16)),
                                                    ],
                                                  )
                                              ),
                                            ],
                                          )
                                      )
                                  ),
                                ]
                          ),
                              )
                          ),
                        ],
                      ),
                  )]
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeadFirstPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffd9d9d9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 2
                  ),
                  child: const Text('Add Lead', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.normal)),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class IconButtonClass extends StatelessWidget {
  const IconButtonClass({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Ink(
          decoration: const ShapeDecoration(
            shape: CircleBorder(),
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back, size: 20, weight: 500),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class IconAddClass extends StatelessWidget {
  const IconAddClass({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 25,
      child: Material(
        color: Colors.transparent,
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),
          child: IconButton(
            icon: const Icon(Icons.add, size: 20, weight: 900),
            color: Colors.black,
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LeadFirstPage()),
              );
            },
          ),
        ),
      )
    );
  }
}