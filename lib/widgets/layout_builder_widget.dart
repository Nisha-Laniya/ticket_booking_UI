import '../utils/barrel_export.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final double width;
  const LayoutBuilderWidget({Key? key, this.isColor, required this.sections, this.width = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        print(
            'The Width is ${constraints.constrainWidth()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / sections)
                  .floor(),
                  (index) => SizedBox(
                height: 1.h,
                width: width,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor==null? Colors.white : Colors.grey.shade300),
                ),
              )),
        );
      },
    );
  }
}
