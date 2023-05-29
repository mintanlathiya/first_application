import 'package:flutter/material.dart';

class GmailDrawerUi extends StatelessWidget {
  const GmailDrawerUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search in mail'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 30,
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.inbox,
                      size: 30,
                      
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('All inboxes'),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                padding: const EdgeInsets.only(right: 10),
                height: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 225, 191, 178),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(30))),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.stay_primary_landscape,
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text('primary'),
                    ),
                    Spacer(),
                    Text('248'),
                  ],
                ),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.inbox,
                      size: 30,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('promotions'),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    height: 25,
                    width: 60,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: const Text('18 new'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.group_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Social'),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text('All abels'),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.star,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Starred'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.watch_later_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Snoozed'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.social_distance,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Important'),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('9'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.send,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Sent'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.schedule_send_outlined,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Scheduled'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.outbox,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Outbox'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.drafts,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Draft'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.mail,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('All mail'),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('328'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.disabled_by_default_sharp,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Spam'),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('8'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.delete,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Transh'),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                child: Text('Google apps'),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.calendar_month,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Calendar'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.person,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Contacts'),
                  ),
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('settings'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.help,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text('Help \$ feedback'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
