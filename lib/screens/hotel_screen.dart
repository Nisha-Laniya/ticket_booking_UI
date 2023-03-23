import '../utils/barrel_export.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelScreen({Key? key,required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15),vertical: AppLayout.getHeight(17),),
      margin: const EdgeInsets.only(right: 17,top: 5).r,
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24).w,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius:5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            child: Container(
              decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(12).w,
                  color: Styles.primaryColor,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/${hotel['image']}',
                      )
                  )
              ),
            ),
          ),
          SizedBox(height: 10.h,),
          Text(hotel['place'],style: Styles.headLineStyle2.copyWith(color: Styles.fontColor,),),
          SizedBox(height: 5.h,),
          Text(hotel['destination'],style: Styles.headLineStyle3.copyWith(color: Colors.white,),),
          SizedBox(height: 8.h,),
          Text('\$${hotel['price']}/night',style: Styles.headLineStyle2.copyWith(color:Styles.fontColor,),),
        ],
      ),
    );
  }
}
