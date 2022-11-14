import 'package:flutter/material.dart';
import 'package:untitled5/home_page.dart';
import 'package:untitled5/home2.dart';
import 'package:untitled5/Contact.dart';
import 'package:untitled5/about.dart';
import 'package:untitled5/item_detail_page.dart';

import 'Contact.dart';
void main() =>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute:
  '/Home2',
  routes: {

    '/home_page':(context)=>const HomePage(),
    '/Home2':(context)=> Home2(),
    '/Contact':(context)=>const Contact(),
    '/about':(context)=> About(),
    '/item_detail_page':(context)=>  ItemDetailsPage(),

   // '/contact':(context)=>const Contact(),
  },
));