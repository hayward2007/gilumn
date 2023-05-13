import 'package:cloud_firestore/cloud_firestore.dart'; // new
import 'package:firebase_auth/firebase_auth.dart'
    hide EmailAuthProvider, PhoneAuthProvider;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

void post() async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  await firestore.collection("Hello").add(<String, dynamic>{
    "text": "Hello World",
  });
  // print(firestore.collection("Hello").doc("Hello").set(<String, dynamic>{
  //   "text": "Hello World",
  // }));
  // print(await firestore.namedQueryGet("Hello"));
}
