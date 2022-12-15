import 'package:flutter/material.dart';

class DetailJob extends StatefulWidget {
    static launch(BuildContext context) => Navigator.pushNamed(context, '/detailJob');
  const DetailJob({super.key});

  @override
  State<DetailJob> createState() => _DetailJobState();
}

class _DetailJobState extends State<DetailJob> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}