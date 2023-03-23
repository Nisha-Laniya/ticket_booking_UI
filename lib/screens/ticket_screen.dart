import '../utils/barrel_export.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              SizedBox(
                height: AppLayout.getHeight(40),
              ),
              Text(
                'Tickets',
                style: Styles.headLineStyle1,
              ),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              const TicketTabs(firstTab: 'Upcoming', secondTab: 'Previous'),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0], isColor: true),
              ),
              SizedBox(height: 1,),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        ColumnLayout(
                            firstText: '5221 364869',
                            secondText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                            isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    const LayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ColumnLayout(
                          firstText: '0055 444 77147',
                          secondText: 'Number of E-ticket',
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        ColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking code',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    LayoutBuilderWidget(sections: 15,isColor: false,width: 5.w,),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset('assets/images/visa.png',scale: 11,),
                                Text(" *** 2462",style: Styles.headLineStyle3,)
                              ],
                            ),
                            SizedBox(height: 5.h,),
                            Text('Payment method',style: Styles.headLineStyle4,),
                          ],
                        ),
                        const ColumnLayout(
                          firstText: '\$249.99',
                          secondText: 'Price',
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              //bar code
              SizedBox(height: 1.h,),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(21),bottomLeft: Radius.circular(21),),
                ),
                margin: const EdgeInsets.only(left: 15,right: 15),
                padding: const EdgeInsets.only(top: 20,bottom: 20).r,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(15),),
                      child: BarcodeWidget(data: 'https://www.youtube.com', barcode: Barcode.code128(),drawText: false,color: Styles.textColor,height: 70,)),
                ),
              ),
              SizedBox(
                height: AppLayout.getHeight(20),
              ),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(ticket: ticketList[0]),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getWidth(22),
            top: AppLayout.getWidth(295),
            child: Container(
              padding: const EdgeInsets.all(3).r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2.w),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getWidth(22),
            top: AppLayout.getWidth(295),
            child: Container(
              padding: const EdgeInsets.all(3).r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor,width: 2.w),
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
