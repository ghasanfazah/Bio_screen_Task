import 'package:flutter/material.dart';
import 'package:ucas_101_bio_app/widgets/app_card.dart';
import 'package:ucas_101_bio_app/widgets/app_container.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'BIO',
          style: TextStyle(
            fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.orange.shade200,
              Colors.teal.shade200,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png',
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Student Name',
              style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold),
            ),
            Text(
              'UCAS - Palesine',
              style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.black45,
                  fontSize: 13,
                  letterSpacing: 1),
            ),
            Divider(
              thickness: 2,
              indent: 30,
              endIndent: 30,
              color: Colors.black12,
              height: 20,
            ),
            AppCard(
              leadingIcon: Icons.email,
              title: "Email",
              subTitle: "student@ucas.edu.ps",
              trailingIcon: Icons.send,
              marginBottom: 10,
              onPressed: () => print('Send Email'),
            ),
            AppCard(
              leadingIcon: Icons.phone_android,
              title: "Phone",
              subTitle: "970-599-123-456",
              trailingIcon: Icons.call,
              marginBottom: 10,
              onPressed: () => print('Call Phone'),
            ),
            AppContainer(
              leadingIcon: Icons.location_history,
              title: "Location",
              subTitle: "Gaza, Palestine",
              trailingIcon: Icons.map,
              onPressed: () => print('Open Map'),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('UCAS 101 - 2023'),
            ),
          ],
        ),
      ),
    );
  }
}
