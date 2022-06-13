part of shared;

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.content,
      padding: const EdgeInsets.all(32),
      child: Column(
        children: const [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Last updated on '),
                TextSpan(text: 'Jun 13th 2022'),
              ],
            ),
          ),
          SizedBox(height: 16),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Website build using '),
                WidgetSpan(child: FlutterLogo()),
                TextSpan(text: 'Flutter'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
