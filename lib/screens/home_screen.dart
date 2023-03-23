import '../utils/barrel_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: Styles.headLineStyle3,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Book Tickets',
                          style: Styles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10).w,
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage('assets/images/img_1.png'),),),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10).w,
                      color: const Color(0xFFF4F6FD)),
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12), vertical: AppLayout.getHeight(12),),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                const ViewAll(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16).r,
            child: Row(
              children: ticketList
                  .map((singleTicket) => TicketView(ticket: singleTicket))
                  .toList(),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
              padding:EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: const ViewAll(
                bigText: 'Hotels',
                smallText: 'View all',
              )),
          SizedBox(
            height: 5.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20).r,
            child: Row(
                children: hotelList
                    .map((singleHotel) => HotelScreen(hotel: singleHotel))
                    .toList()),
          )
        ],
      ),
    );
  }
}


