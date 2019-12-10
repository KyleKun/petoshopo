import 'package:http/http.dart' as http;

Future callCustomer(var customerData) async {
  http.get(Uri.parse('http://kylekun.pythonanywhere.com/call')
      .replace(queryParameters: customerData)
      .toString());
}

Future sendSmsReminder(var customerData) async {
  http.get(Uri.parse('http://kylekun.pythonanywhere.com/sms')
                     .replace(queryParameters: customerData)
                     .toString());
}

Future askFeedback(var customerData) async {
  http.get(Uri.parse('http://kylekun.pythonanywhere.com/feedback')
      .replace(queryParameters: customerData)
      .toString());
}
