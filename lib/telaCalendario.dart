import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class PublicarCalendario extends StatefulWidget {

  DateTime data;

  PublicarCalendario(this.data);

  @override
  _PublicarCalendarioState createState() => _PublicarCalendarioState();
}

class _PublicarCalendarioState extends State<PublicarCalendario> {

  var _currentDate;
  int _bottomBar = 2;

  @override
  void initState() {
    super.initState();

    if(widget.data != null){
      _currentDate = widget.data;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: CalendarCarousel<Event>(
          
          onDayPressed: (DateTime date, List<Event> events) {
            this.setState(() => _currentDate =  date);
          },
          weekendTextStyle: TextStyle(
            color: Colors.red,
          ),
          thisMonthDayBorderColor: Colors.grey,
          customDayBuilder: (
            bool isSelectable,
            int index,
            bool isSelectedDay,
            bool isToday,
            bool isPrevMonthDay,
            TextStyle textStyle,
            bool isNextMonthDay,
            bool isThisMonthDay,
            DateTime day,
          ) {
           
          },
          weekFormat: false,
          height: 420.0,
          daysHaveCircularBorder: false,
          selectedDateTime: _currentDate,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomBar,
        onTap: (indice){
          if(indice == 0){
            Navigator.pop(context);
          }else if(indice == 2){
            Navigator.pop(context, _currentDate);
          }else if(indice == 1){
            Navigator.pop(context, true);
          }

          setState(() {
            _bottomBar = indice;
          });

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            title: Text("Voltar")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cancel),
            title: Text("Remover Data")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            title: Text("Confirmar data")
          )
         
        ],
      ),
    );
  }
}
