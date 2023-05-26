import 'package:flutter/material.dart';
import 'package:flutter_task/LeadFirstPage.dart';
import 'package:flutter_task/LeadThirdPage.dart';
import 'package:flutter_task/main.dart';

class LeadSecondPage extends StatelessWidget{
  LeadSecondPage({super.key, required this.name, required this.pincode});

  final String name;
  final String pincode;

  final incomeController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff232939),
          flexibleSpace: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const IconButtonClass(),
                  Container(
                    margin: const EdgeInsets.only(left: 30),
                    child: const Text('Add Leads', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.normal)),
                  )
                ],
              )
            ],
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff232939),
                        ),
                        child: const Text('2', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16)),
                      ),
                      const Text('Income details', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.normal), textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text('Company/Business Name', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 4,
                              offset: Offset(0 ,2),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 5.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text('Experience / Vintage', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 4,
                              offset: Offset(0 ,2),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 5.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text('Salary / Turnover', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 4,
                              offset: Offset(0 ,2),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          controller: incomeController,
                          maxLines: 1,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 5.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text('Company / Business Address', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
                      ),
                      Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x33000000),
                              blurRadius: 4,
                              offset: Offset(0 ,2),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          maxLines: 1,
                          style: const TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 5.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  child: const Text('Pincode', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left),
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33000000),
                                      blurRadius: 4,
                                      offset: Offset(0 ,2),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: TextFormField(
                                  maxLines: 1,
                                  style: const TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 5.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: const Text('City', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left),
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33000000),
                                      blurRadius: 4,
                                      offset: Offset(0 ,2),
                                    ),
                                  ],
                                  color: Colors.white,
                                ),
                                child: TextFormField(
                                  maxLines: 1,
                                  style: const TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 5.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, bottom: 10),
                            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color(0xffd4d4d4), width: 1, ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 4,
                                  offset: Offset(2, 4),
                                ),
                              ],
                              color: const Color(0xff232939),
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LeadFirstPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xff232939),
                                ),
                                child: const Text('Previous', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16))
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 30, bottom: 10),
                            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: const Color(0xffd4d4d4), width: 1, ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 4,
                                  offset: Offset(2, 4),
                                ),
                              ],
                              color: const Color(0xff232939),
                            ),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const MyApp()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: const Color(0xff232939),
                                ),
                                child: const Text('Cancel', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16))
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: const Color(0xffd4d4d4), width: 1, ),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x66000000),
                              blurRadius: 4,
                              offset: Offset(2, 4),
                            ),
                          ],
                          color: const Color(0xff232939),
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LeadThirdPage(name: name, pincode: pincode, income: incomeController.text.toString())),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              elevation: 0,
                              backgroundColor: const Color(0xff232939),
                            ),
                            child: const Text('Next', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16))
                        ),
                      ),
                      const SizedBox(height: 2,)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}