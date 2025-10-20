import 'dart:collection';
import 'package:flutter/material.dart';

import '../../../models/settings_model/settings_model/social_model.dart';

class PolicyList {
  final List<SocialModel> _policyList = [
    SocialModel(
        title: "Device permissions for Personal Data access",
        // icon: Icons.phone_android,
        link:
            '''Depending on the User's specific device, this Application may request certain permissions that allow it to access the User's device Data as described below. By default, these permissions must be granted by the User before the respective information can be accessed. Once the permission has been given, it can be revoked by the User at any time. In order to revoke these permissions, Users may refer to the device settings. The exact procedure for controlling app permissions may be dependent on the User's device and software. Please note that the revoking of such permissions might impact the proper functioning of this Application. If User grants any of the permissions listed below, the respective Personal Data may be processed (i.e accessed to, modified or removed) by Noti \n'''),
    SocialModel(
        title: "Information Noti collects",
        icon: Icons.save,
        link:
            '''This application does not collect personal information. Data created by the user with Noti (ie calendar entries, tasks and notes) is stored locally and only the user has access to it. Noti in no way makes this data available to third parties or stores it in the cloud.\n'''),
    SocialModel(
        title: "Communicate with you & improve our services",
        icon: Icons.contact_mail,
        link:
            '''We collect information about the browsers and devices you use to access Noti. We only collect personal data required to deliver our services, and we only store it to the extent that it is essential to perform these services. Noti collects email addresses from those who communicate with us via email, as well as information provided through voluntary activities such as site registration or survey participation. We use the information we collect to interact with you directly.\n'''),
    SocialModel(
        title: "Privacy controls & security",
        icon: Icons.security,
        link:
            '''The created data, i.e. tasks and notes saved in the calendar, are stored locally on the user's device the application in no way shared this data with third parties or stores it in the cloud. Only the user can access them from their device. Noti will never sell your personal data with a third party, and we will never share data to third parties without your permission. When absolutely necessary, Noti uses third party services and hosting partners who are GDPR-compliant. In such instances, we take essential security methods to guarantee that we comply with GDPR when sending and receiving data from third parties.\n'''),
    SocialModel(
        title: "Controls for DO-NOT-TRACK features",
        icon: Icons.insert_chart,
        link:
            '''Most web browsers and some mobile operating systems and mobile applications include a Do-Not-Track ("DNT") feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. At this stage no uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy notice.\n'''),
    SocialModel(
        title: "Delete data",
        icon: Icons.delete,
        link:
            '''The data created with the application can be deleted by selecting the settings icon (the gear icon) and then selecting "settings" from the bar menu on the right, and then selecting the tab titled "Recycle Bin" - you can decide after which time the data will be deleted. Data is also deleted during the process of uninstalling the application from the device. Data from the website, such as the name and e-mail address provided for the newsletter, may be deleted after sending information to the contact address with a request to delete the data.\n'''),
    SocialModel(
        title: "The rights of Users",
        icon: Icons.people,
        link:
            '''In brief: In some regions, such as the European Economic Area (EEA) and the United Kingdom (United Kingdom), you have rights that give you greater access to and control over your personal information. You can review, change or close your account at any time. In some regions (such as the EEA and UK) you have certain rights under applicable data protection laws. They may include the right - to request access and obtain a copy of your personal data, to request rectification or deletion, to limit the processing of your personal data and, where applicable, to transfer data. In certain circumstances, you may also have the right to object to the processing of your personal data. To make such a request, please use the contact details provided below. We will consider and take action upon request in accordance with applicable data protection laws. If we are relying on your consent to process your personal data, you have the right to withdraw your consent at any time. Remember, however, that this will not affect the lawfulness of processing prior to its withdrawal or the processing of your personal data based on lawful grounds for processing other than consent. If you are an EEA or UK resident and you believe that we are processing your personal data unlawfully, you also have the right to lodge a complaint with your local data protection supervisory authority
Their contact details can be found here: National Data Protection Authorities
If you are a resident in Switzerland, the contact details for the data protection authorities are available here: Ein Fehler ist aufgetreten.\n'''),
    SocialModel(
        title: "Do California residents have specific privacy rights?",
        icon: Icons.person_add,
        link:
            '''In brief: Yes, if you live in California you have certain rights to access your personal information. Section 1798.83 of the California Civil Code, also known as the "Shine The Light" Act, allows our California users to request and obtain from us once a year and free of charge information on the categories of personal information (if any) disclosed to third parties for direct marketing purposes as well as the names and addresses of all third parties with whom we shared personal data in the immediately preceding calendar year. If you are a California resident and wish to make such a request, please send us your request to the email address provided below. If you are under the age of 18, live in California and have a registered account, you have the right to request the deletion of unwanted data. To request deletion of such data, please contact us using the contact details provided below, providing the email address associated with your account and a statement that you live in California. We will make sure that the data is not publicly displayed in the Application, however, it should be remembered that this data may not be completely or comprehensively removed from all our systems (e.g. backups, etc.).\n'''),
    SocialModel(
        title: "Cookies",
        icon: Icons.cookie,
        link:
            '''Cookies are required on Noti Website. We use them to collect visitors' preferences and thus to better optimize the user experience. Users can disable cookies in their browser settings. But please note that our services rely on cookies to function properly, and you may not be able to access certain features on our Website after disabling them.\n'''),
    SocialModel(
        title: "Changes to This Policy",
        icon: Icons.security,
        link:
            '''If our Privacy Policy is changed in the future, we will not limit your rights under this Privacy Policy without your express consent. We always indicate the publication date of the latest changes. If the changes are significant, we will send you a more prominent notice (including, for certain services, an email notification of changes to the Privacy Policy). Please check back periodically to stay informed of any updates or changes to this Privacy Policy. By continuing to access and use Noti, you agree to be bound by the revised policy.\n'''),
    SocialModel(
        title: "Contact Us",
        icon: Icons.phone,
        link:
            '''If you have any questions about this Policy, please email us at r85unit@gmail.com with topic: "Privacy Questions” in the title line.\n'''),
  ];

  UnmodifiableListView<SocialModel> get policy {
    return UnmodifiableListView(_policyList);
  }

  int get policyListCounter {
    return _policyList.length;
  }

  final List<SocialModel> _permissionsList = [
    SocialModel(
        title: "Wake-lock permission:",
        icon: Icons.circle,
        link:
            '''For local notifications, the app needs to wake up the screen or processor and keep it awake to remind the user of coming tasks.\n'''),
    SocialModel(
        title: "Camera and image gallery permission:",
        icon: Icons.circle,
        link:
            '''Used for accessing the camera or capturing images from the device.\n'''),
    SocialModel(
        title: "Read and write external storage permission:",
        icon: Icons.circle,
        link:
            '''Data saved by the user, i.e. tasks from the calendar and notes are stored locally only.\n'''),
    SocialModel(
        title: "Internet permission:",
        icon: Icons.circle,
        link:
            '''The main functions of the application do not require an internet connection, while the application needs internet access only when displaying links to the websites of the creators of external libraries and r85unit social media.\n'''),
  ];
  UnmodifiableListView<SocialModel> get permissions {
    return UnmodifiableListView(_permissionsList);
  }

  int get permissionsListCounter {
    return _permissionsList.length;
  }
}
