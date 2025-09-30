import 'package:doctor_hunt_app/core/utils/app_assets.dart';
import 'package:doctor_hunt_app/core/utils/app_colors.dart';
import 'package:doctor_hunt_app/core/utils/app_styles.dart';
import 'package:doctor_hunt_app/core/widgets/custom_elevated_buttom.dart';
import 'package:doctor_hunt_app/screens/main_layout/favorite/widgets/appointement_custom_container.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DoctorAppointmentComfirm extends StatefulWidget {
  const DoctorAppointmentComfirm({super.key});

  @override
  State<DoctorAppointmentComfirm> createState() =>
      _DoctorAppointmentComfirmState();
}

class _DoctorAppointmentComfirmState extends State<DoctorAppointmentComfirm> {
  DateTime? _selectedDay;
  DateTime? _focusedDay;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  bool isSelected = false;
  bool isReminder = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/appointment_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SafeArea(
                child: Row(
                  spacing: 10,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.white,
                        foregroundColor: AppColors.grey,
                      ),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.grey,
                      ),
                    ),
                    Text("Appointment", style: AppStyles.medium18black),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2028, 3, 14),
                focusedDay: DateTime.now(),
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },

                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay =
                        focusedDay; // update `_focusedDay` here as well
                  });
                },
                currentDay: DateTime.now(),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  titleTextStyle: TextStyle(
                    color: AppColors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  leftChevronIcon: Icon(
                    Icons.chevron_left,
                    color: AppColors.white,
                  ),
                  rightChevronIcon: Icon(
                    Icons.chevron_right,
                    color: AppColors.white,
                  ),
                ),
                calendarStyle: CalendarStyle(
                  todayDecoration: BoxDecoration(
                    color: Colors.green.shade200,
                    shape: BoxShape.circle,
                  ),
                  selectedDecoration: BoxDecoration(
                    color: AppColors.green,
                    shape: BoxShape.circle,
                  ),
                  weekendTextStyle: TextStyle(color: AppColors.grey),
                  defaultTextStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                  defaultDecoration: BoxDecoration(color: AppColors.white),
                  disabledTextStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.grey,
                  ),
                  rangeStartDecoration: BoxDecoration(color: AppColors.green),
                  holidayDecoration: BoxDecoration(color: AppColors.green),
                  rangeEndDecoration: BoxDecoration(color: AppColors.green),
                  withinRangeDecoration: BoxDecoration(color: AppColors.green),
                  rowDecoration: BoxDecoration(color: AppColors.white),
                ),
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
            ),
            Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.4,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black.withValues(alpha: 0.3),
                  ),
                ],
                color: AppColors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Avaliable Time", style: AppStyles.medium18black),
                  Row(
                    children: [
                      AppointementCustomContainer(
                        isSelected: isSelected,
                        text: "10:00\n AM",
                      ),
                      AppointementCustomContainer(
                        isSelected: isSelected,
                        text: "12:00\n AM",
                      ),
                      AppointementCustomContainer(
                        isSelected: isSelected,
                        text: "2:00\n PM",
                      ),
                      AppointementCustomContainer(
                        isSelected: isSelected,
                        text: "3:00\n PM",
                      ),
                      AppointementCustomContainer(
                        isSelected: isSelected,
                        text: "04:00\n PM",
                      ),
                    ],
                  ),
                  Text("Reminder Me Before", style: AppStyles.medium18black),
                  Row(
                    children: [
                      AppointementCustomContainer(
                        isSelected: isReminder,
                        text: " 30 \n Minit",
                      ),
                      AppointementCustomContainer(
                        isSelected: isReminder,
                        text: " 40 \n Minit",
                      ),
                      AppointementCustomContainer(
                        isSelected: isReminder,
                        text: " 25 \n Minit",
                      ),
                      AppointementCustomContainer(
                        isSelected: isReminder,
                        text: " 10 \n Minit",
                      ),
                      AppointementCustomContainer(
                        isSelected: isReminder,
                        text: " 35 \n Minit",
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 10,
                    ),
                    child: CustomElevatedButtom(
                      text: "Confirm",
                      onPressed: _showResultDialoge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showResultDialoge() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          insetPadding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 30,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.green.withValues(alpha: 0.2),
                  ),
                  child: Icon(Icons.thumb_up, color: AppColors.green, size: 50),
                ),
                Text(
                  "Thank You !",
                  style: AppStyles.medium18black.copyWith(fontSize: 38),
                ),
                Text(
                  "You booked an appointment with Dr. Pediatrician Purpieson on February 21,at 02:00 PM",
                  style: AppStyles.regular14grey,
                ),
                CustomElevatedButtom(
                  text: "Done",
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Edit your appointment",
                    style: AppStyles.regular14grey,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
