import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';

class AhadethDetails extends StatelessWidget {
  const AhadethDetails({super.key});
  static const String routeName='ahadethDetails';
  @override
  Widget build(BuildContext context) {
    var ahadethDetails = ModalRoute.of(context)!.settings.arguments as HadethModel;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/home-background.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            ahadethDetails.topic,
            style: GoogleFonts.elMessiri(
              color: Colors.black87,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.transparent,
        body: Card(
          margin: EdgeInsets.only(top: 80, bottom: 80, right: 29, left: 29),
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Colors.transparent)
          ),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  ahadethDetails.content[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff242424)),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 6,
              ),
              itemCount: ahadethDetails.content.length),
        ),
      ),
    );
  }
}
