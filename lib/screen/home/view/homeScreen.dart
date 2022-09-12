import 'package:emi_clac_pr/screen/home/provider/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double val = 100;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xff383838),
            appBar: AppBar(
              backgroundColor: Color(0xffffffff),
              leading: Icon(
                Icons.menu_rounded,
                color: Color(0xff383838),
              ),
              title: Text(
                'Emi Calculator',
                style: TextStyle(color: Color(0xff383838)),
              ),
              centerTitle: true,
              elevation: 00,
            ),
            body: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xffffffff),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Emi per Month : ${Provider.of<homeProvider>(context).emi.toInt()} ₹',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Total Interest : ${Provider.of<homeProvider>(context).ans.toInt()} ₹',
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 110),
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color(0xff383838),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Loan Amount',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 25),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          '${Provider.of<homeProvider>(context, listen: true).amnt.toInt()} ₹',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 25),
                        ),
                        Slider(
                          activeColor: Color(0xffffffff),
                          inactiveColor: Color(0xff5b5b5b),
                          min: 0,
                          max: 1000000,
                          divisions: 200,
                          value:
                              Provider.of<homeProvider>(context, listen: true)
                                  .amnt,
                          onChanged: (value) {
                            Provider.of<homeProvider>(context, listen: false)
                                .loanam(value);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Interest Rate',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 25),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          '${Provider.of<homeProvider>(context, listen: true).rs.toInt()} %',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 25),
                        ),
                        Slider(
                          activeColor: Color(0xffffffff),
                          inactiveColor: Color(0xff5b5b5b),
                          min: 0,
                          max: 15,
                          divisions: 15,
                          value:
                              Provider.of<homeProvider>(context, listen: true)
                                  .rs,
                          onChanged: (value) {
                            Provider.of<homeProvider>(context, listen: false)
                                .intrest(value);
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Duration',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 25),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          '${Provider.of<homeProvider>(context, listen: true).tr.toInt()}',
                          style:
                              TextStyle(color: Color(0xffffffff), fontSize: 25),
                        ),
                        Slider(
                          activeColor: Color(0xffffffff),
                          inactiveColor: Color(0xff5b5b5b),
                          min: 0,
                          max: 30,
                          divisions: 3,
                          value:
                              Provider.of<homeProvider>(context, listen: true)
                                  .tr,
                          onChanged: (value) {
                            Provider.of<homeProvider>(context, listen: false)
                                .time(value);
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Provider.of<homeProvider>(context, listen: false)
                                  .calcu();
                              Provider.of<homeProvider>(context, listen: false)
                                  .total();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffffffff)),
                            child: Text(
                              'Calculate',
                              style: TextStyle(
                                  color: Color(0xff383838), fontSize: 20),
                            ),),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,right: 8),
                          child: Align(alignment:Alignment.bottomRight,child: Text("By Jay_Sardhara-7429",style: TextStyle(color: Color(0xffffffff),fontSize: 17),)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
