import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/sura_model.dart';
import 'package:provider/provider.dart';

import '../my_theme.dart';
import '../providers/my_provioder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  List<int> suraNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    8,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    7,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(top: 235, left: 180),
              height: 630,
              child: VerticalDivider(
                color: provider.themeMode == ThemeMode.light
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColorDark,
                thickness: 3,
              )),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 0),
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/ic_home.png")),
              Divider(
                thickness: 3,
                color: provider.themeMode == ThemeMode.light
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColorDark,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'عدد الآيات',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "اسم السورة",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              Divider(
                thickness: 3,
                color: provider.themeMode == ThemeMode.light
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).primaryColorDark,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.transparent,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, SuraDetails.routeName,
                            arguments: SuraModel(
                                suraName: suraName[index], index: index));
                        setState(() {});
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.transparent,
                            child: Text('${suraNumber[index]}',
                                style: provider.themeMode == ThemeMode.light
                                    ? Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: MyThemeData.lightBlack,
                                        )
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: MyThemeData.darkWhite,
                                        )),
                          ),
                          Container(
                            color: Colors.transparent,
                            child: Text('${suraName[index]}',
                                style: provider.themeMode == ThemeMode.light
                                    ? Theme.of(context)
                                        .textTheme.bodyMedium!.copyWith(
                                          color: MyThemeData.lightBlack,
                                        )
                                    : Theme.of(context)
                                        .textTheme.bodyMedium!.copyWith(
                                          color: MyThemeData.darkWhite,
                                        )),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: suraName.length,
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
