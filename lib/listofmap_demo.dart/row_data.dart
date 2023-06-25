import 'package:first_application/listofmap_demo.dart/uesr_model.dart';
import 'package:flutter/material.dart';

final List<Map> whatsappList = [
  {
    'url': 'assets/images/3.jpeg',
    'name': 'mintan',
    'message': 'hello',
    'time': '3;00am',
    'icon': Icons.call,
  },
  {
    'url': 'assets/images/4.jpeg',
    'name': 'ravi',
    'message': 'ok',
    'time': '5:20am',
    'icon': Icons.video_call,
  },
  {
    'url': 'assets/images/5.jpeg',
    'name': 'kappu',
    'message': 'kya?',
    'time': '3:0am',
    'icon': Icons.call,
  },
  {
    'url': 'assets/images/4.jpeg',
    'name': 'viraj',
    'message': 'hello',
    'time': '12:00am',
    'icon': Icons.call,
  },
  {
    'url': 'assets/images/3.jpeg',
    'name': 'meet6',
    'message': 'hello bhai',
    'time': '4:00am',
    'icon': Icons.call,
  },
  {
    'url': 'assets/images/4.jpeg',
    'name': 'raj',
    'message': 'ok buy',
    'time': '5:20am',
    'icon': Icons.video_call,
  },
  {
    'url': 'assets/images/5.jpeg',
    'name': 'jemish',
    'message': 'kya cho?',
    'time': '3:00am',
    'icon': Icons.call,
  },
  {
    'url': 'assets/images/4.jpeg',
    'name': 'veer',
    'message': 'good',
    'time': '11:00am',
    'icon': Icons.call,
  },
];

final List<Map<String, dynamic>> userDetails = [
  {
    'userName': 'mintan',
    'emailId': 'mintan@gmail.com',
    'url': 'assets/images/3.jpeg',
    'time': '3:00am',
    'icon': Icons.call,
  },
  {
    'userName': 'viraj',
    'emailId': 'viraj@gmail.com',
    'url': 'assets/images/4.jpeg',
    'time': '3:00am',
    'icon': Icons.call,
  },
  {
    'userName': 'ansh',
    'emailId': 'ansh@gmail.com',
    'url': 'assets/images/5.jpeg',
    'time': '11:00am',
    'icon': Icons.call,
  },
  {
    'userName': 'vishal',
    'emailId': 'vishal@gmail.com',
    'url': 'assets/images/22.jpeg',
    'time': '11:00am',
    'icon': Icons.video_call,
  },
  {
    'userName': 'hardik',
    'emailId': 'hardik@gmail.com',
    'url': 'assets/images/23.jpeg',
    'time': '11:00am',
    'icon': Icons.call,
  },
  {
    'userName': 'jemish',
    'emailId': 'jemish@gmail.com',
    'url': 'assets/images/24.jpeg',
    'time': '1:10am',
    'icon': Icons.call,
  },
  {
    'userName': 'kappu',
    'emailId': 'kappu@gmail.com',
    'url': 'assets/images/25.jpeg',
    'time': '8:20am',
    'icon': Icons.call,
  },
  {
    'userName': 'raj',
    'emailId': 'raj@gmail.com',
    'url': 'assets/images/27.jpeg',
    'time': '1:00am',
    'icon': Icons.video_call,
  },
  {
    'userName': 'pravin',
    'emailId': 'pravin@gmail.com',
    'url': 'assets/images/30.jpeg',
    'time': '12:00am',
    'icon': Icons.call,
  },
  {
    'userName': 'jatin',
    'emailId': 'jatin@gmail.com',
    'url': 'assets/images/26.jpeg',
    'time': '11:00am',
    'icon': Icons.call,
  },
];
List<User> userData = [];

final List<Map<String, dynamic>> userCallDetails = [
  {
    'name': 'mintan',
    'url': 'assets/images/3.jpeg',
    'time': '3:00am',
    'icon': Icons.call,
  },
  {
    'name': 'viraj',
    'url': 'assets/images/4.jpeg',
    'time': '3:00am',
    'icon': Icons.call,
  },
  {
    'name': 'ansh',
    'url': 'assets/images/5.jpeg',
    'time': '11:00am',
    'icon': Icons.call,
  },
  {
    'name': 'vishal',
    'url': 'assets/images/22.jpeg',
    'time': '11:00am',
    'icon': Icons.video_call,
  },
  {
    'name': 'hardik',
    'url': 'assets/images/23.jpeg',
    'time': '11:00am',
    'icon': Icons.call,
  },
  {
    'name': 'jemish',
    'url': 'assets/images/24.jpeg',
    'time': '1:10am',
    'icon': Icons.call,
  },
  {
    'name': 'kappu',
    'url': 'assets/images/25.jpeg',
    'time': '8:20am',
    'icon': Icons.call,
  },
  {
    'name': 'raj',
    'url': 'assets/images/27.jpeg',
    'time': '1:00am',
    'icon': Icons.video_call,
  },
  {
    'name': 'pravin',
    'url': 'assets/images/30.jpeg',
    'time': '12:00am',
    'icon': Icons.call,
  },
  {
    'name': 'jatin',
    'url': 'assets/images/26.jpeg',
    'time': '11:00am',
    'icon': Icons.call,
  },
];
List<UserCall> userCallData = [];

final List<Map<String, dynamic>> userInstaDetails = [
  {
    'name': 'mintan',
    'url': 'assets/images/3.jpeg',
  },
  {
    'name': 'viraj',
    'url': 'assets/images/4.jpeg',
  },
  {
    'name': 'ansh',
    'url': 'assets/images/5.jpeg',
  },
  {
    'name': 'vishal',
    'url': 'assets/images/22.jpeg',
  },
  {
    'name': 'hardik',
    'url': 'assets/images/23.jpeg',
  },
  {
    'name': 'jemish',
    'url': 'assets/images/24.jpeg',
  },
  {
    'name': 'kappu',
    'url': 'assets/images/25.jpeg',
  },
  {
    'name': 'raj',
    'url': 'assets/images/27.jpeg',
  },
  {
    'name': 'pravin',
    'url': 'assets/images/30.jpeg',
  },
  {
    'name': 'jatin',
    'url': 'assets/images/26.jpeg',
  },
];
List<UserInsta> userInstaData = [];

final List<Map<String, dynamic>> gmailDrawer = [
  {
    'icon': Icons.inbox,
    'iconName': 'All inboxes',
  },
  {},
  {
    'icon': Icons.stay_primary_landscape,
    'iconName': 'Primary',
    'messageNumber': '3 new',
  },
  {
    'icon': Icons.inbox,
    'iconName': 'Promotios',
    'messageNumber': '8 new',
  },
  {
    'icon': Icons.group_outlined,
    'iconName': 'Social',
    'messageNumber': '8 new',
  },
  {
    'iconName': 'All labels',
  },
  {
    'icon': Icons.star,
    'iconName': 'Starred',
  },
  {
    'icon': Icons.watch_later_outlined,
    'iconName': 'Snoozed',
  },
  {
    'icon': Icons.social_distance,
    'iconName': 'Important',
    'messageNumber': '99+',
  },
  {
    'icon': Icons.send,
    'iconName': 'Sent',
  },
  {
    'icon': Icons.schedule_send_outlined,
    'iconName': 'Scheduled',
  },
  {
    'icon': Icons.outbox,
    'iconName': 'OutBox',
  },
  {
    'icon': Icons.drafts,
    'iconName': 'Drafts',
    'messageNumber': '1',
  },
  {
    'icon': Icons.mail,
    'iconName': 'All mail',
  },
  {
    'icon': Icons.disabled_by_default_sharp,
    'iconName': 'Spam',
    'messageNumber': '6',
  },
  {
    'icon': Icons.delete,
    'iconName': 'Transh',
  },
  {
    'iconName': 'Google apps',
  },
  {
    'icon': Icons.calendar_month,
    'iconName': 'Calendar',
  },
  {
    'icon': Icons.person,
    'iconName': 'Contacts',
  },
  {
    'icon': Icons.settings,
    'iconName': 'Settings',
  },
  {
    'icon': Icons.help,
    'iconName': 'Help & feedback',
  },
];
List<GmailDrawer> gmailDrawerData = [];

//  ************************** All Emails Details Api *********************** //

final List<Map<String, dynamic>> gmailPageDetail = [
  {
    'icon': Icons.label_important_outline,
    'senderName': 'Promotions',
    'subName': 'Sayyedmahboob Khazi.Natio...',
    'messageNumber': '2 new',
  },
  {
    'senderName': 'COINW',
    'subName':
        'Unlimited! MacBook Prp givewa...\n join the trading from on 6.6-6.15  (...',
    'messageDate': 'Jun 7',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'Angle One',
    'subName':
        'Register of Securities & Funds fo...\n Dear lathiya mintan kanjibhai,with...',
    'messageDate': 'Jun 7',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'BSE INVESTOR PROTECTION...',
    'subName':
        'Awareness message from BSe inves...\n Dear Investor,Please follow the bel...',
    'messageDate': 'Jun 7',
    'icon': Icons.star_border,
  },
  {
    'icon': Icons.group_outlined,
    'senderName': 'Social',
    'subName': ' Facebook Friending',
    'messageNumber': '8 new',
  },
  {
    'senderName': 'Medium Daily Digest',
    'subName':
        'I Used chatGPT (Every Day) for 5...\n Mintan Lathiya Stories for MintanLa...',
    'messageDate': 'Jun 7',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'COINW',
    'subName':
        'Unlimited! MacBook Prp givewa...\n join the trading from on 6.6-6.15  (...',
    'messageDate': 'Jun 7',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'Angle One',
    'subName': 'Important advisory \n Be cautious in your dealings Dear C...',
    'messageDate': 'Jun 6',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'BSE INVESTOR PROTECTION...',
    'subName':
        'Awareness message from BSe inves...\n Dear Investor,Please follow the bel...',
    'messageDate': 'Jun 6',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'nse_alerts',
    'subName':
        'Funds/Securities Balance\n Dear Investor,With reference to NS...',
    'messageDate': 'Jun 6',
    'icon': Icons.star_border,
  },
  {
    'senderName': 'BSE INVESTOR PROTECTION...',
    'subName':
        'Awareness message from BSe inves...\n Dear Investor,Please follow the bel...',
    'messageDate': 'Jun 5',
    'icon': Icons.star_border,
  },
];
List<GmailPageDrawer> gmailPageData = [];

final List<Map<String, dynamic>> youtubeDetail = [
  {
    'icon': Icons.sports_esports_outlined,
    'iconName': 'Create a Short',
  },
  {
    'icon': Icons.upload,
    'iconName': 'Upload a video',
  },
  {
    'icon': Icons.live_tv_outlined,
    'iconName': 'Go live',
  },
  {
    'icon': Icons.post_add,
    'iconName': 'Create a post',
  },
];
List<YoutubeBottomSheet> youtubeData = [];

final List<Map<String, dynamic>> youtubeenddrawerDetail = [
  {
    'icon': Icons.person_pin_outlined,
    'iconName': 'Your channel',
  },
  {
    'icon': Icons.perm_contact_cal_sharp,
    'iconName': 'Tuen on Incognito',
  },
  {
    'icon': Icons.person_add_outlined,
    'iconName': 'Add account',
  },
  {},
  {
    'icon': Icons.workspace_premium_outlined,
    'iconName': 'Get YouTube Premium',
  },
  {
    'icon': Icons.attach_money,
    'iconName': 'Purchases and memberships',
  },
  {
    'icon': Icons.av_timer,
    'iconName': 'Time watched',
  },
  {
    'icon': Icons.person_pin_circle,
    'iconName': 'Your data in YouTube',
  },
  {},
  {
    'icon': Icons.settings,
    'iconName': 'Settings',
  },
  {
    'icon': Icons.help_outline_outlined,
    'iconName': 'Help & feedback',
  },
  {},
  {
    'icon': Icons.spatial_audio_off,
    'iconName': 'YouTube Studio',
  },
  {
    'icon': Icons.music_note_outlined,
    'iconName': 'YouTube Music',
  },
  {
    'icon': Icons.kitesurfing_rounded,
    'iconName': 'YouTube Kids',
  },
];
List<YoutubeendDrawerBottomSheet> youtubeenddrawerData = [];

final List<Map<String, dynamic>> youtubePageApi = [
  {
    'url': 'assets/images/21.jpeg',
    'subName': 'Eiffel Tower \n sparkling⭐',
    'views': '65k',
  },
  {
    'url': 'assets/images/22.jpeg',
    'subName': 'Rome tour \n Italy 2023',
    'views': '6.5M',
  },
  {
    'url': 'assets/images/23.jpeg',
    'subName': 'Spain Travel \n Best Place',
    'views': '45k',
  },
  {
    'url': 'assets/images/24.jpeg',
    'subName': 'Holiday in Bali \n visit in Bali',
    'views': '779k',
  },
  {
    'url': 'assets/images/25.jpeg',
    'subName': '5 place to visit \n in Spain 2021',
    'views': '51k',
  },
  {
    'url': 'assets/images/21.jpeg',
    'subName': 'Eiffel Tower \n Tour⭐',
    'views': '48k',
  },
];
List<YoutubePageDetail> youtubePageData = [];

final List<Map<String, dynamic>> youtubeVideoPageApi = [
  {
    'videoProfile': 'assets/images/26.jpeg',
    'videoTime': '9:09',
    'acProfile': 'assets/images/3.jpeg',
    'subName':
        'Is  this  most  beautiful  building  in  the \n world? - Stephanie  Honchell  Smith',
    'channelName': 'TED_Ed - ',
    'views': '506k views - ',
    'durationTime': '6 months ago',
  },
  {
    'videoProfile': 'assets/images/21.jpeg',
    'videoTime': '8:05',
    'acProfile': 'assets/images/4.jpeg',
    'subName':
        'EIFFEL  TOWER  AT  NIGHT, Paris  France \n Eiffel  Tower  sparkling  &  twinkling  at  ni...',
    'channelName': 'Jean_ Luc Ichard - ',
    'views': '1.1M views - ',
    'durationTime': '5 years ago',
  },
];
List<YoutubeVideoPageDetail> youtubeVideoPageData = [];

final List<Map> gridData = [
  {
    'icon': Icons.add,
    'name': 'add',
  },
  {
    'icon': Icons.wallet,
    'name': 'wallet',
  },
  {
    'icon': Icons.search,
    'name': 'search',
  },
  {
    'icon': Icons.circle,
    'name': 'circle',
  },
  {
    'icon': Icons.alarm,
    'name': 'alarm',
  },
  {
    'icon': Icons.circle,
    'name': 'circle',
  },
  {
    'icon': Icons.alarm,
    'name': 'alarm',
  },
  {
    'icon': Icons.copy,
    'name': 'copy',
  },
  {
    'icon': Icons.arrow_back,
    'name': 'arrow_back',
  },
  {
    'icon': Icons.arrow_forward,
    'name': 'arrow_forward',
  },
  {
    'icon': Icons.share,
    'name': 'share',
  },
  {
    'icon': Icons.shop,
    'name': 'shop',
  },
];

final List<Map<String, dynamic>> pageViewReelList = [
  {
    'url': 'assets/images/21.jpeg',
  },
  {
    'url': 'assets/images/22.jpeg',
  },
  {
    'url': 'assets/images/23.jpeg',
  },
  {
    'url': 'assets/images/24.jpeg',
  },
  {
    'url': 'assets/images/25.jpeg',
  },
  {
    'url': 'assets/images/26.jpeg',
  },
  {
    'url': 'assets/images/27.jpeg',
  },
  {
    'url': 'assets/images/28.jpeg',
  },
];

final List<Map<String, dynamic>> stepperStepList = [
  {
    'title': 'first text',
    'subtitle': ' i am first ',
    'content': 'hi i am first content',
    'icon': Icons.edit_outlined,
  },
  {
    'title': 'secound text',
    'subtitle': ' i am secound ',
    'content': 'hi i am secound content',
    'icon': Icons.edit_outlined,
  },
  {
    'title': 'thrird text',
    'subtitle': ' i am thrird ',
    'content': 'hi i am thrird content',
    'icon': Icons.edit_outlined,
  },
  {
    'title': 'four text',
    'subtitle': ' i am four ',
    'content': 'hi i am four content',
    'icon': Icons.edit_outlined,
  },
  {
    'title': 'five text',
    'subtitle': ' i am five ',
    'content': 'hi i am five content',
    'icon': Icons.edit_outlined,
  },
];

final List<Map<String, dynamic>> instagramProfilePageImageList = [
  {
    'url': 'assets/images/21.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/28.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/26.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/24.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/22.jpeg',
  },
];

final List<Map<String, dynamic>> instagramProfilePageImageList1 = [
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/4.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/4.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/4.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
  {
    'url': 'assets/images/4.jpeg',
  },
  {
    'url': 'assets/images/35.jpeg',
  },
];
