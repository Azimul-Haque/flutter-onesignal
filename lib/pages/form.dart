import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  var formKey = GlobalKey<FormState>();
  _showToast(String textToast) {
    Fluttertoast.showToast(
      msg: textToast,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );
  }

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();

  var name, phone, address;

  void handleSubmit() {
    if(formKey.currentState.validate()) {
      formKey.currentState.save();
      // do the rest
      print("Name is: ${this.name}");
      this._showToast('Form Saved');
      Navigator.pop(context);
    }
  }
  void handleReset() {
    nameController.clear();
    phoneController.clear();
    addressController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete_outline), 
            onPressed: () async{
              handleReset();
              _showToast('Form Cleared.');
            },
            tooltip: "Clear Form",
          ),
          IconButton(
            icon: Icon(Icons.check), 
            onPressed: () async{
              handleSubmit();
            },
            tooltip: "Save",
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        SizedBox(height: 5,),
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                    controller: nameController,
                    maxLength: 50,
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if(value.length == 0) {
                        return "Name is required";
                      }
                    },
                    onSaved: (value) {
                      this.name = value;
                    },
                  ),
                  TextFormField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    maxLength: 11,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                    ),
                    validator: (value) {
                      if(value.length < 11) {
                        return "Phone Number must be 11 digits";
                      }
                    },
                    onSaved: (value) {
                      this.phone = value;
                    },
                  ),
                  TextFormField(
                    controller: addressController,
                    maxLength: 100,
                    decoration: InputDecoration(
                      labelText: "Address",
                    ),
                    validator: (value) {
                      if(value.length == 0) {
                        return "Address is required";
                      }
                    },
                    onSaved: (value) {
                      this.address = value;
                    },
                  ),
                  RaisedButton(
                    child: Text("Go Back"),
                    color: Colors.lightBlue,
                    hoverElevation: 5,
                    onPressed: () {
                      setState(() {
                        _showToast('Form Saved.');
                        Navigator.pop(context);
                      });
                    },
                  ),
                ],),
              ),
            ),
          ],
        ),
      ],)
    );
  }
}