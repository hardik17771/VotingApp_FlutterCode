import 'dart:html';
import 'package:http/http.dart';
import 'package:votingapp_flutter/Utilities/values.dart';
import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Client? httpclient;
  Web3Client? web3client;
  @override
  void initState() {
    TextEditingController controller= TextEditingController();
    httpclient= Client();
    web3client = Web3Client(infura_url, httpclient!);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
          ),
        ],
      ),

    );
  }
}
