import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mailer/smtp_server.dart';
import 'package:url_launcher/link.dart';
import 'package:http/http.dart' as http;
// import 'package:web/web.dart';

class Contactpage extends StatefulWidget {

  final contactKey;

  const Contactpage({super.key, required Key this.contactKey});

  @override
  State<Contactpage> createState() => _ContactpageState();
}

class _ContactpageState extends State<Contactpage> {

  final gmailSMTP = hotmail("mr.vip82095@gmail.com", "wumm ngda btxm mwvg");

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController msg = TextEditingController();


  Future SendEmail() async{
    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    final response = await http.post(url,
      headers: {
        'origin': 'http://localhost:58869/',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'service_id': 'service_ddo9hrx',
        'template_id': 'template_8s4dtc7',
        'user_id': 'VtAOtM9QJDhYVc4xH',
        'template_params': {
          'user_name': name.text,
          'user_email': email.text,
          'user_msg': msg.text,
        },
      }),
    );
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Mail Send Successfully", style: TextStyle(fontWeight: FontWeight.w500), textAlign: TextAlign.center,)));
  }


  // smpt method
  // SendEmail(BuildContext context) async {
  //
  //   // Create our message.
  //   final message = Message()
  //     ..from = Address("mr.vip82095@gmail.com", 'Your name')
  //     ..recipients.add('mr.vip82095@gmail.com')
  //     ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
  //     ..text = 'This is the plain text.\nThis is line 2 of the text part.';
  //
  //   try {
  //     final sendReport = await send(message, gmailSMTP);
  //     print('Message sent: ' + sendReport.toString());
  //   } on MailerException catch (e) {
  //     print('Message not sent.');
  //     for (var p in e.problems) {
  //       print('Problem: ${p.code}: ${p.msg}');
  //     }
  //   }
  //
  // }

  Container Desktop(final currentWidth, final currentHeight, final context){

    return Container(
      key: widget.contactKey,
      margin: const EdgeInsets.only(top: 60,),
      height: currentHeight,
      width: currentWidth,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),

      child: Column(
        children: [

          const SizedBox(height: 22,),

          const Text("Contact", style: TextStyle(fontSize: 40, color: Colors.white60),),

          const SizedBox(height: 50,),

          SizedBox(
            height: currentHeight/2.1,
            width: currentWidth/2.1,
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        cursorColor: Colors.black54,
                        style: const TextStyle(color: Colors.black87),
                        controller: name,
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),),
                          hintText: "your name",
                          hintStyle: const TextStyle(color: Colors.black38),
                        ),
                        // controller: ,
                      ),
                    ),

                    const SizedBox(width: 15,),

                    Flexible(
                      child: TextField(
                        cursorColor: Colors.black54,
                        style: const TextStyle(color: Colors.black87),
                        controller: email,
                        decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),),
                          hintText: "your e-mail",
                          hintStyle: const TextStyle(color: Colors.black38),
                        ),
                        // controller: ,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15,),

                Flexible(
                  child: TextField(
                    maxLength: 500,
                    controller: msg,
                    // increase size/height of textfield:::::
                    maxLines: 10,
                    autocorrect: true,
                    cursorColor: Colors.black54,
                    style: const TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),),
                      hintText: "message...",
                      hintStyle: const TextStyle(color: Colors.black38),
                    ),
                    // controller: ,
                  ),
                ),

                SizedBox(
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      elevation: 6,
                      backgroundColor: Colors.white,
                    ),
                    onPressed: (){
                      SendEmail();
                      email.clear();
                      name.clear();
                      msg.clear();
                      },
                    child: const Text("submit", style: TextStyle(color: Colors.black),),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30,),

          Container(
            width: currentWidth/3.5,
            constraints: const BoxConstraints(minHeight: 120),
            child: Column(
              children: [

                const Divider(),

                const SizedBox(height: 30,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Link(
                      uri: Uri.parse("https://github.com/Dhananjay-Jaipur"),
                      target: LinkTarget.blank,
                      builder: (context, link) => Container(
                        constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                        child: InkWell(
                          onTap: link,
                          child: Image.asset("asset/icon/1608908_github_icon.png", color: Colors.white,),
                        ),
                      ),
                    ),

                    const SizedBox(width: 30,),

                    Link(
                      uri: Uri.parse("https://www.linkedin.com/in/dhananjay-9085a9340/"),
                      target: LinkTarget.blank,
                      builder: (context, link) => Container(
                        constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                        child: InkWell(
                          onTap: link,
                          child: Image.asset("asset/icon/icons8-linkedin-48.png",),
                        ),
                      ),
                    ),

                    const SizedBox(width: 30,),

                    Link(
                      uri: Uri.parse("https://wa.me/8209570543"),
                      target: LinkTarget.blank,
                      builder: (context, link) => Container(
                        constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                        child: InkWell(
                          onTap: link,
                          child: Image.asset("asset/icon/whatsapp.png",),
                        ),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  Container Mobile(final currentWidth, final currentHeight, final context){

    return Container(
      key: widget.contactKey,
      margin: const EdgeInsets.only(top: 60,),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),

      child: Stack(
        children: [
          Center(
            child: Column(
              children: [

                const SizedBox(height: 22,),

                const Text("Contact", style: TextStyle(fontSize: 40, color: Colors.white60),),

                const SizedBox(height: 50,),

                SizedBox(
                  height: currentHeight/1.2,
                  width: currentWidth * 0.8,
                  // constraints: BoxConstraints(maxHeight: 500, maxWidth: 200),
                  child: Column(
                    children: [

                      Flexible(
                        child: TextField(
                          cursorColor: Colors.black54,
                          style: const TextStyle(color: Colors.black87),
                          controller: name,
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),),
                            hintText: "your name",
                            hintStyle: const TextStyle(color: Colors.black38),
                          ),
                          // controller: ,
                        ),
                      ),

                      const SizedBox(height: 15,),

                      Flexible(
                        child: TextField(
                          cursorColor: Colors.black54,
                          style: const TextStyle(color: Colors.black87),
                          controller: email,
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),),
                            hintText: "your e-mail",
                            hintStyle: const TextStyle(color: Colors.black38),
                          ),
                          // controller: ,
                        ),
                      ),

                      const SizedBox(height: 15,),

                      Expanded(
                        child: TextField(
                          maxLength: 500,
                          controller: msg,
                          // increase size/height of textfield:::::
                          maxLines: 10,
                          cursorColor: Colors.black54,
                          style: const TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            fillColor: Colors.white70,
                            filled: true,
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),),
                            hintText: "message...",
                            hintStyle: const TextStyle(color: Colors.black38),
                          ),
                          // controller: ,
                        ),
                      ),

                      SizedBox(
                        height: 44,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shadowColor: Colors.black,
                            elevation: 6,
                            backgroundColor: Colors.white,
                          ),
                          onPressed: (){
                            SendEmail();
                            email.clear();
                            name.clear();
                            msg.clear();
                            },
                          child: const Text("submit", style: TextStyle(color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

          Positioned(
            bottom: currentHeight * .3,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: currentWidth * .2),
              child: const Center(child: Divider()),
            ),
          ),

          Positioned(
            bottom: currentHeight * .2,
            left: 0,
            right: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Link(
                  uri: Uri.parse("https://github.com/Dhananjay-Jaipur"),
                  target: LinkTarget.blank,
                  builder: (context, link) => Container(
                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    child: InkWell(
                      onTap: link,
                      child: Image.asset("asset/icon/1608908_github_icon.png", color: Colors.white,),
                    ),
                  ),
                ),

                const SizedBox(width: 30,),

                Link(
                  uri: Uri.parse("https://www.linkedin.com/in/dhananjay-9085a9340/"),
                  target: LinkTarget.blank,
                  builder: (context, link) => Container(
                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    child: InkWell(
                      onTap: link,
                      child: Image.asset("asset/icon/icons8-linkedin-48.png",),
                    ),
                  ),
                ),

                const SizedBox(width: 30,),

                Link(
                  uri: Uri.parse("https://wa.me/8209570543"),
                  target: LinkTarget.blank,
                  builder: (context, link) => Container(
                    constraints: const BoxConstraints(maxHeight: 50, maxWidth: 50),
                    child: InkWell(
                      onTap: link,
                      child: Image.asset("asset/icon/whatsapp.png",),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    if(currentWidth>800) {
      return Desktop(currentWidth, currentHeight, context);
    } else {
      return Mobile(currentWidth, currentHeight, context);
    }
  }
}
