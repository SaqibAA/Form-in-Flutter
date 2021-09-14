import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';


void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormState();
  }
}

class FormState extends State<Form> {
  List itemList = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo",
    "Costa ica",
    "Cote d'Ivoire",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czechia",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Kosovo",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    'Montenegro',
    "Morocco",
    'Mozambique',
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "North Macedonia",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Korea",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates (UAE)",
    "United Kingdom (UK)",
    "United States of America (USA)",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Vatican City (Holy See)",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];

  final number = TextEditingController();
  final issue = TextEditingController();
  final expiry = TextEditingController();
  final image = ImagePicker();

  String? nationalityValue;
  String? countyValue;

  File? imageFile;
  String value = "Select Photo";
  String result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final passNumber = TextField(
      obscureText: false,
      controller: number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ], // Only numbers can be entered
      keyboardType: TextInputType.number,
      maxLength: 12,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          filled: true,
          fillColor: Colors.white,
          labelText: "Passport Number",
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final resultValue = Text(
      result,
      textAlign: TextAlign.center,
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Contractor Registration'),
      ),
      body: Container(
        color: Colors.white,
        child: Card(
          color: Colors.brown[400],
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 90),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("ID/Passport Details",
                    style: TextStyle(
                      fontSize: 24.0,
                    )),
                SizedBox(height: 20),
                passNumber,
                SizedBox(height: 5),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            menuMaxHeight: 300,
                            dropdownColor: Colors.brown[400],
                            isExpanded: true,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            hint: Text(
                              "Nationality",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            value: nationalityValue,
                            onChanged: (newValue) {
                              setState(() {
                                nationalityValue = newValue as String?;
                              });
                            },
                            items: itemList.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            )),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            menuMaxHeight: 300,
                            dropdownColor: Colors.brown[400],
                            isExpanded: true,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            hint: Text(
                              "Country",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            value: countyValue,
                            onChanged: (newValue) {
                              setState(() {
                                countyValue = newValue as String?;
                              });
                            },
                            items: itemList.map((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: TextField(
                        obscureText: false,
                        controller: issue,
                        keyboardType: TextInputType.datetime,
                        maxLength: 10,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            labelText: "Issue Date",
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: TextField(
                        obscureText: false,
                        controller: expiry,
                        keyboardType: TextInputType.datetime,
                        maxLength: 10,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            labelText: "Expiry Date",
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: Text(
                        value,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: picker,
                              child: Text(
                                "Choose File",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                              ),
                              onPressed: () {
                                // showNotification;
                                setState(() {
                                  result = "Click Continue Button";
                                });
                              },
                              child: Text(
                                "Go Back",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 0),
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Form2()));
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 20),
                resultValue,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> picker() async {
    String message;
    final selectFile = await image.pickImage(source: ImageSource.gallery);
    if (selectFile != null) {
      message = "Upload Successful";
    } else {
      message = "Select Photo";
    }
    setState(() {
      value = message;
    });
  }
}

//Second Page

class Form2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FormState2();
  }
}

class FormState2 extends State<Form2> {
  List itemList = [
    "India",
    "USA",
    "China",
    "UAE",
    "Australia",
    "Germany",
    "Canada",
    "France",
  ];

  final licenseNumber = TextEditingController();
  final issue = TextEditingController();
  final expiry = TextEditingController();
  final image1 = ImagePicker();
  final image2 = ImagePicker();

  String? countyValue;

  File? imageFile;
  String front = "Select Front Photo";
  String back = "Select Back Photo";
  String result = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final licenseNo = TextField(
      obscureText: false,
      controller: licenseNumber,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ], // Only numbers can be entered
      keyboardType: TextInputType.number,
      maxLength: 12,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          filled: true,
          fillColor: Colors.white,
          labelText: "License Number",
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    final resultValue = Text(result, textAlign: TextAlign.center);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Contractor Registration'),
      ),
      body: Container(
        color: Colors.white,
        child: Card(
          color: Colors.brown[400],
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 90),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Driving License Details",
                    style: TextStyle(
                      fontSize: 24.0,
                    )),
                SizedBox(height: 20),
                licenseNo,
                SizedBox(height: 10),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: TextField(
                        obscureText: false,
                        controller: expiry,
                        keyboardType: TextInputType.datetime,
                        maxLength: 10,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            labelText: "Expiry Date",
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: TextField(
                        obscureText: false,
                        controller: expiry,
                        keyboardType: TextInputType.text,
                        maxLength: 10,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            labelText: "Issue Country",
                            filled: true,
                            fillColor: Colors.white,
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: Text(
                        front,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: picker1,
                              child: Text(
                                "Choose File",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: Text(
                        back,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                                backgroundColor: Colors.white,
                              ),
                              onPressed: picker2,
                              child: Text(
                                "Choose File",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Form()));
                              },
                              child: Text(
                                "Go Back",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(width: 0),
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  result = "Click Back Button";
                                });
                              },
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 20),
                resultValue,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> picker1() async {
    String message;
    final selectFile = await image1.pickImage(source: ImageSource.gallery);
    if (selectFile != null) {
      message = "Upload Successful";
    } else {
      message = "Select Front Photo";
    }
    setState(() {
      front = message;
    });
  }

  Future<void> picker2() async {
    String message;
    final selectFile = await image2.pickImage(source: ImageSource.gallery);
    if (selectFile != null) {
      message = "Upload Successful";
    } else {
      message = "Select back Photo";
    }
    setState(() {
      back = message;
    });
  }
}
