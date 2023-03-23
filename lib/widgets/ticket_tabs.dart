import '../utils/barrel_export.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const TicketTabs({Key? key, required this.firstTab, required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    // (fitted box wrap)
    return FittedBox(
      child: Container(
        padding: EdgeInsets.all(3.5).r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6F0)),
        child: Row(
          children: [
            //airplane tickets
            Container(
              width: size.width * 0.44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.white,
              ),
              child: Center(child: Text(firstTab)),
            ),
            //hotels
            Container(
              width: size.width * 0.44,
              padding:
              EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(
                    AppLayout.getHeight(50),
                  ),
                ),
                color: Colors.transparent,
              ),
              child: Center(child: Text(secondTab)),
            ),
          ],
        ),
      ),
    );
  }
}
