import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/presentation/providers/radio_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../providers/my_provioder.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return ChangeNotifierProvider(
      create: (context) => RadioProvider()..getRadioData(),
      child: Consumer<RadioProvider>(
          builder: (context, RadioProvider myProvider, Widget? child) {
        print(myProvider.data.length);
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:120),
                child: Image.asset("assets/images/main_ic_radio.png"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "إذاعة القرآن الكريم",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  physics: PageScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Text(
                            myProvider.data[index].name ?? '',
                            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w300
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(onTap: (){
                                myProvider.stopAudio();
                              },
                                child: Icon(
                                  Icons.pause,
                                  size: 40,
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  myProvider.playAudio(index);
                                },
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 40,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  itemCount: myProvider.data.length,
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
