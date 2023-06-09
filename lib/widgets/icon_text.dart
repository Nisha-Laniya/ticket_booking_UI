import '../utils/barrel_export.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12),horizontal: AppLayout.getWidth(12),),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10),),
          color: Colors.white
      ),
      child: Row(
        children: [
          Icon(icon,color: const Color(0xFFBFc2DF),),
          SizedBox(width: AppLayout.getWidth(10),),
          Text(text,style: Styles.textStyle,),
        ],
      ),
    );
  }
}
