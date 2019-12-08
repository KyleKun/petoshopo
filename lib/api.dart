import 'package:http/http.dart' as http;

Future callCustomer(var customerData) async {
  http.get(Uri.parse('http://10.0.2.2:5000/call')
      .replace(queryParameters: customerData)
      .toString());
}

Future sendSmsReminder(var customerData) async {
  http.get(Uri.parse('http://10.0.2.2:5000/sms')
                     .replace(queryParameters: customerData)
                     .toString());
}

Future askFeedback(var customerData) async {
  http.get(Uri.parse('http://10.0.2.2:5000/feedback')
      .replace(queryParameters: customerData)
      .toString());
}
