import 'package:flutter/material.dart';
class CurrencyConverterPage extends StatefulWidget {
  @override
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double amount = 0.0;
  double convertedAmount = 0.0;
  String selectedCurrency = 'USD';
  List<String> currencies = ['USD', 'EUR', 'GBP', 'JPY'];

  void convertCurrency() {
    double rate = 1.0;
    if (selectedCurrency == 'EUR') {
      rate = 0.85;
    } else if (selectedCurrency == 'GBP') {
      rate = 0.72;
    } else if (selectedCurrency == 'JPY') {
      rate = 110.10;
    }
    setState(() {
      convertedAmount = amount * rate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/mobile cover.jpg"),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Image(
                      width: 150,
                      height:150,
                      image: AssetImage("assets/images/Bank_logo_real.png"),

                    )
                ),
                SizedBox(height: 100,),
                Text('Enter amount in USD',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter the amount please",
                      border: OutlineInputBorder()

                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        amount = double.parse(value);
                      });
                    },
                  ),
                ),
                SizedBox(height: 20),
                DropdownButton<String>(
                  value: selectedCurrency,
                  items: currencies.map((String currency) {
                    return DropdownMenuItem<String>(
                      value: currency,
                      child: Text(currency),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedCurrency = value!;
                    });
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text('Convert',),
                  onPressed: convertCurrency,
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Go Back")),
                SizedBox(height: 20),
                Text('Converted amount: $convertedAmount $selectedCurrency',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}