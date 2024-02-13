import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ahadeth_details.dart';

import '../hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> model = [];

  @override
  Widget build(BuildContext context) {
    if (model.isEmpty) {
      loadFile();
    }
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/ic_ahadeth.png")),
          Divider(
            thickness: 3,
            color: Color(0xffB7935F),
          ),
          Text(
            "الأحاديث",
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Divider(
            thickness: 3,
            color: Color(0xffB7935F),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 12,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AhadethDetails.routeName,
                        arguments: HadethModel(
                            topic: model[index].topic,
                            content: model[index].content));
                    setState(() {});
                  },
                  child: Text(
                    model[index].topic,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.elMessiri(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                );
              },
              itemCount: model.length,
            ),
          )
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }

  loadFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((allAhadeth) {
      List<String> allAhadethSplited = allAhadeth.split("#");

      for (int i = 0; i < allAhadethSplited.length; i++) {
        String hadeth = allAhadethSplited[i];
        List<String> hadethLines = hadeth.trim().split("\n");
        String topic = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        model.add(HadethModel(content: content, topic: topic));
      }
      setState(() {});
    });
  }
}
