import 'package:intl/intl.dart';

class FormatDateAndTime {
  String formattedDate(date) {
    final outPutDateFormat = DateFormat('dd/MM/yyyy');
    final outputDate = outPutDateFormat.format(date);
    return outputDate;
  }

  String formattedDays(DateTime date) {
    final outPutDateFormat = DateFormat('EEE  dd/MM/yyyy  hh:mm a');
    final outputDate = outPutDateFormat.format(date);
    return outputDate;
  }

  // String formatTimestamp(Timestamp timestamp) {
  //   DateTime messageDateTime = timestamp.toDate();
  //   DateTime now = DateTime.now();
  //   Duration difference = now.difference(messageDateTime);

  //   if (difference.inSeconds < 60) {
  //     return "${difference.inSeconds} second${difference.inSeconds > 1 ? 's' : ''} ago";
  //   } else if (difference.inMinutes < 60) {
  //     return "${difference.inMinutes} minute${difference.inMinutes > 1 ? 's' : ''} ago";
  //   } else if (difference.inHours < 24) {
  //     return "${difference.inHours} hour${difference.inHours > 1 ? 's' : ''} ago";
  //   } else if (difference.inDays == 1) {
  //     return "Yesterday";
  //   } else if (difference.inDays < 7) {
  //     return "${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago";
  //   } else if (difference.inDays < 30) {
  //     return "${(difference.inDays / 7).floor()} week${(difference.inDays / 7).floor() > 1 ? 's' : ''} ago";
  //   } else {
  //     // Format for dates older than a week
  //     return "${messageDateTime.day.toString().padLeft(2, '0')}/${messageDateTime.month.toString().padLeft(2, '0')}/${messageDateTime.year}";
  //   }
  // }

  // String formatDate(Timestamp timestamp) {
  //   // Timestamp is the object we retrive from firestore
  //   // so to display it, lets convert it to a string
  //   DateTime dateTime = timestamp.toDate();

  //   // get year
  //   String year = dateTime.year.toString();

  //   // get month
  //   String month = dateTime.month.toString();

  //   // get day
  //   String day = dateTime.day.toString();

  //   // get hour
  //   String hour = dateTime.hour.toString();

  //   // get minute
  //   String minute = dateTime.minute.toString();

  //   String weekday = dateTime.toString();

  //   // final formatted date
  //   String formattedDate = '$day/$month/$year  $hour:$minute';

  //   return formattedDate;
  // }

  // String formatTime(Timestamp timestamp) {
  //   // Timestamp is the object we retrive from firestore
  //   // so to display it, lets convert it to a string
  //   DateTime dateTime = timestamp.toDate();

  //   // get hour
  //   String hour = dateTime.hour.toString();

  //   // get minute
  //   String minute = dateTime.minute.toString();

  //   // final formatted date
  //   String formattedTime = '$hour:$minute';

  //   return formattedTime;
  // }
}
