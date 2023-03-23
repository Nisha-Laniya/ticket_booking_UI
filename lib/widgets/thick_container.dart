import '../utils/barrel_export.dart';

class ThickContainer extends StatelessWidget {
  final Color color;
  const ThickContainer({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20).w,
        border: Border.all(width: 1.5.w,color: color)
      ),
    );
  }
}
