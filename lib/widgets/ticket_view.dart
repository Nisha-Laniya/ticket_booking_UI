import '../utils/barrel_export.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 182 : 185),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Showing blue part of ticket view
            Container(
              decoration: BoxDecoration(
                  color: isColor== null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                            isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3,
                      ),
                      const Spacer(),
                      isColor == null ? const ThickContainer(color: Colors.white,) : const ThickContainer(color: Color(0xFF8ACCF7)),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: const LayoutBuilderWidget(sections: 6,isColor: false,),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(
                                Icons.local_airport_rounded,
                                color:isColor == null ? Colors.white : const Color(0xFF8ACCF7),
                              ),
                            ),
                          ),
                        ],
                      )),
                      isColor == null ? const ThickContainer(color: Colors.white,) : const ThickContainer(color: Color(0xFF8ACCF7),),
                      const Spacer(),
                      Text(
                        ticket['to']['code'],
                        style:
                            isColor== null ? Styles.headLineStyle3.copyWith(color: Colors.white) : Styles.headLineStyle3,
                      ),
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['from']['name'],style:isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4,),
                    ),
                    Text(ticket['flying_time'],style:isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(ticket['to']['name'],textAlign: TextAlign.end, style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white) : Styles.headLineStyle4,),
                    ),
                  ],)
                ],
              ),
            ),
            //showing orange part of ticket view
            Container(
              color:isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:isColor == null ? Colors.grey.shade200 : Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getWidth(10)),
                          bottomRight: Radius.circular(AppLayout.getWidth(10))
                        )
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(AppLayout.getWidth(12)),
                        child: LayoutBuilder(
                          builder: (BuildContext context,BoxConstraints constraints) {
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/15).floor(), (index) => Text('-',style: TextStyle(color:isColor == null ? Colors.white : Colors.grey.shade300),)),
                            );
                          },
                        ),
                      ),),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color:isColor == null ? Colors.grey.shade200 : Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(AppLayout.getWidth(10)),
                              bottomLeft: Radius.circular(AppLayout.getWidth(10))
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //bottom part of orange ticket view
            Container(
              decoration: BoxDecoration(
                  color:isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getWidth(isColor == null ? 21 : 0)),
                      bottomRight: Radius.circular(AppLayout.getWidth(isColor == null ? 21 : 0)))),
              padding: const EdgeInsets.only(left: 16,top: 10,right: 16,bottom: 10).r,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      ColumnLayout(firstText: ticket['date'], secondText: 'Date', alignment: CrossAxisAlignment.start,isColor: isColor),
                      ColumnLayout(firstText: ticket['departure_time'], secondText: 'Departure', alignment: CrossAxisAlignment.center,isColor: isColor,),
                      ColumnLayout(firstText: ticket['number'].toString(), secondText: 'Number', alignment: CrossAxisAlignment.end,isColor: isColor,),

                    ],
                ),],
              ),
            )
          ],
        ),
      ),
    );
  }
}
