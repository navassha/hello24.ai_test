import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListOfEmails {
  List<Map<String, dynamic>> listOfMails = [
    {
      "subject": "foundit (Monster): Verify your email address",
      "content":
          "Thank you for signing up with us!To complete your foundit account settings, you need to verify your email address.",
      "from": "foundit - Monster"
    },
    {
      "subject": "1 new junior developer vacancy in Chennai, Tamil Nadu",
      "content":
          "Jr. Java DeveloperJobbycart Technologies - Chennai, Tamil Nadu₹25,000 - ₹35,000 a monthApply securely with Indeed Resume",
      "from": "indeed"
    },
    {
      "subject": "New ways to manage your team’s shared folders",
      "content": "New ways to manage your team’s shared folders",
      "from": "canva"
    },
  ];
}

final listofemailsProvider = Provider<ListOfEmails>((ref) {
  return ListOfEmails();
});
