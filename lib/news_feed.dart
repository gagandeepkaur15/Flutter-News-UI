import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class NewsFeed extends StatefulWidget {
  const NewsFeed({super.key});

  @override
  State<NewsFeed> createState() => _NewsFeedState();
}

DateTime now = DateTime.now();
String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);

class _NewsFeedState extends State<NewsFeed> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(2.5.h, 6.h, 2.5.h, 2.h),
          child: Row(
            children: [
              Text(
                'Agri',
                style: GoogleFonts.merriweather(
                  color: const Color.fromARGB(255, 28, 207, 3),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'shots',
                style: GoogleFonts.merriweather(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        Container(
          width: size.width,
          height: 30.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1579353977828-2a4eab540b9a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FtcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.5.h),
          child: Text(
            'Actionable weather forecasts',
            style: GoogleFonts.merriweather(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 2.5.h,
            ),
            Text(
              'Agrishots',
              style: TextStyle(
                shadows: const [
                  Shadow(color: Colors.white, offset: Offset(0, -5))
                ],
                color: Colors.transparent,
                decoration: TextDecoration.underline,
                decorationColor: const Color.fromARGB(255, 28, 207, 3),
                decorationThickness: 1,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Text(
              formattedDate,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10.sp,
              ),
            ),
            SizedBox(
              width: 2.h,
            ),
            Container(
              height: 2.7.h,
              width: 5.5.h,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 28, 207, 3),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(0.5.h),
                  child: Text(
                    'NEW',
                    style: TextStyle(
                      fontSize: 7.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Row(
            children: [
              const Icon(
                Icons.share,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 3.h,
              ),
              const Icon(
                Icons.bookmark_border_rounded,
                color: Colors.white,
                size: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(2.h, 0.h, 1.5.h, 0.h),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.sp,
            ),
          ),
        ),
      ],
    );
  }
}
