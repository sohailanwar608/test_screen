import 'package:flutter/material.dart';
import 'package:test_screen/presentation/home_screen/widget/custom_container.dart';
import 'package:test_screen/presentation/home_screen/widget/icon_widget.dart';
import 'package:test_screen/presentation/home_screen/widget/profile_action.dart';
import 'package:test_screen/utils/app_text.dart';
import 'package:test_screen/utils/color.dart';
import 'package:timer_count_down/timer_count_down.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          
                /// user email
          
              Text('sohailanwar6677@gmail.com', style: AppTextStyle.pageTitleStyle.copyWith(
                color: AppColor.emailColor
              ),),
          
              /// timer
          
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Remaining Minutes  :  ', style: AppTextStyle.pageTitleStyle.copyWith(
                        color: const Color(0xff9b9b9f)
                      ),),
          
                      Countdown(
                        seconds: 90,
                        build: (BuildContext context, double time)
                        {
          
                          return Text(
                            time.toString(),
                            style: AppTextStyle.pageTitleStyle.copyWith(
                              color: AppColor.minTextColor
                            )
                          );
          
                        },
                        interval: const Duration(seconds: 1),
                        onFinished: () {
                        },
                      ),
          
                    ],
                  ),
          
                  const IconWidget(color: AppColor.nameColor, height: 40,)
                ],
              ),
          
                const SizedBox(height: 20,),
          
                const CustomContainer(title: 'Get Transkriptor Pro', description: 'Upgrade your account to get more transcripts', customIcon: Icons.ac_unit, parentColor: AppColor.trancColor, childColor: AppColor.transSmallColor, iconColor: AppColor.icon1Color, childHeight: 45, rightMargin: true,),
                const SizedBox(height: 20,),
                const Row(
                  children: [
                    Expanded(child: ProfileActionWidget(   title: 'Record', description: 'and transcribe', customIcon: Icons.ac_unit,)),
                    SizedBox(width: 20,),
                    Expanded(child: ProfileActionWidget(   title: 'Pick a File', description: 'Audio/Video File', customIcon: Icons.ac_unit,)),
                  ],
                ),
                const SizedBox(height: 20,),
          
                const Row(
                  children: [
                    Expanded(child: ProfileActionWidget(   title: 'Share a File', description: 'From whatsapp, Telegram or Photos', customIcon: Icons.ac_unit,)),
                    SizedBox(width: 20,),
                    Expanded(child: ProfileActionWidget(   title: 'From Url', description: 'From Youtube, Derive or Dropbox', customIcon: Icons.ac_unit,)),
                  ],
                ),
                const SizedBox(height: 15,),
                const CustomContainer(title: 'Meeting Assistant', description: 'Accept meeting assistant to the meeting, after meeting ended get the transcription in minutes!', customIcon: Icons.baby_changing_station, parentColor: AppColor.homeContColor, childColor: AppColor.homeSmallContColor, iconColor: AppColor.icon2Color, childHeight: 45, ),
                const SizedBox(height: 10,),
               
          
          
          
          
            ],),
          ),
        ),
      ),
    );
  }
}
