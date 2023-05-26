import 'package:flutter/material.dart';
import 'package:flutter_task/main.dart';
import 'package:intl/intl.dart';

class LeadThirdPage extends StatefulWidget{
  const LeadThirdPage({super.key, required this.name, required this.pincode, required this.income});

  final String name;
  final String pincode;
  final String income;

  @override
  LeadOne createState() => LeadOne();
}

class LeadOne extends State<LeadThirdPage>{
  List<String> serviceItems = ['Service Type', 'Car Loan', 'Education Loan', 'Property Loan', 'Business Loan', 'Personal Loan'];
  List<String> sourceItems = ['Source', 'Personal', 'Reference', 'Google', 'LinkedIn', 'Instagram', 'Facebook', 'Dialer'];
  List<String> leadStatusItems = ['', 'Cancelled', 'Pre-login', 'Follow Up', 'Documents Pending', 'All Docs Required', 'Logged-in', 'Banker Verification', 'Approval'];

  String selectedServiceValue = "Service Type";
  String? selectedSource = "Source";
  String? selectedLeadStatus = "";
  final dealAmountController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _timeEditingController = TextEditingController();

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
                        child: const Text('3', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16)),
                      ),
                      const Text('Loan details', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.normal), textAlign: TextAlign.center),
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
                          child: const Text('Deal Amount', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
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
                          controller: dealAmountController,
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
                        margin: const EdgeInsets.only(top: 10),
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
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            style: const TextStyle(fontSize: 16, color: Colors.black),
                            isExpanded: true,
                            hint: const Text("Service Type"),
                            value: selectedServiceValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedServiceValue = newValue ?? "";
                              });
                            },
                            items: serviceItems.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(top: 10),
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
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              style: const TextStyle(fontSize: 16, color: Colors.black),
                              isExpanded: true,
                              hint: const Text("Source"),
                              value: selectedSource,
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedSource = newValue ?? "";
                                });
                              },
                              items: sourceItems.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
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
                                child: const Text('Follow Up Date', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left),
                              ),
                              Container(
                                height: 40,
                                width: 190,
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
                                  controller: _textEditingController,
                                  maxLines: 1,
                                  style: const TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                      contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    prefixIcon: const Icon(Icons.calendar_today_outlined),
                                    hintText: '|',
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: _selectedDate,
                                        firstDate: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101)
                                    );

                                    if(pickedDate != null){
                                      _selectedDate = pickedDate;
                                      _textEditingController
                                        ..text = DateFormat.yMMMd().format(_selectedDate)
                                        ..selection = TextSelection.fromPosition(TextPosition(
                                            offset: _textEditingController.text.length,
                                            affinity: TextAffinity.upstream));
                                    }
                                  },
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
                                child: const Text('Follow Up Time', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left),
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
                                  controller: _timeEditingController,
                                  maxLines: 1,
                                  style: const TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    prefixIcon: const Icon(Icons.calendar_today_outlined),
                                    hintText: '|',
                                  ),
                                  readOnly: true,
                                  onTap: () async {
                                    TimeOfDay? pickedTime = await showTimePicker(
                                        context: context,
                                        initialTime: _selectedTime,
                                    );

                                    if(pickedTime != null ){
                                      _selectedTime = pickedTime;
                                      _timeEditingController.text = "${pickedTime.hour}:${pickedTime.minute}";
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text('Lead Status', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
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
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            style: const TextStyle(fontSize: 16, color: Colors.black),
                            isExpanded: true,
                            value: selectedLeadStatus,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedLeadStatus = newValue ?? "";
                              });
                            },
                            items: leadStatusItems.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: const Text('Remarks', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 20), textAlign: TextAlign.left,)
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
                                  Navigator.pop(context);
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
                                MaterialPageRoute(builder: (context) => MyAppNew(name: widget.name, pincode: widget.pincode, income: widget.income, dealAmount: dealAmountController.text.toString(), leadStatus: selectedLeadStatus.toString(), loanType: selectedServiceValue.toString())),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size.fromHeight(50),
                              elevation: 0,
                              backgroundColor: const Color(0xff232939),
                            ),
                            child: const Text('ADD', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 16, fontWeight: FontWeight.bold))
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