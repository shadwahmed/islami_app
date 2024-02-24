import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/ahadeth_details.dart';
import 'package:provider/provider.dart';

import '../hadeth_model.dart';
import '../providers/my_provioder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> model = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    if (model.isEmpty) {
      loadFile();
    }
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/ic_ahadeth.png")),
          Divider(
            thickness: 3,
            color: provider.themeMode == ThemeMode.light
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColorDark,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeth_name,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          Divider(
            thickness: 3,
            color: provider.themeMode == ThemeMode.light
                ? Theme.of(context).primaryColor
                : Theme.of(context).primaryColorDark,
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
                    style: Theme.of(context).textTheme.bodyLarge,
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
