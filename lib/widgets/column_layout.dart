import '../utils/barrel_export.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const ColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style:isColor == null ? Styles.headLineStyle3.copyWith(color: Colors.white) :Styles.headLineStyle3,),
        SizedBox(height: AppLayout.getHeight(5),),
        Text(secondText,style: isColor == null ? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
      ],
    );
  }
}
