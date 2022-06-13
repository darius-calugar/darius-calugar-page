part of home;

class HomeAboutSection extends StatelessWidget {
  const HomeAboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Opacity(
            opacity: .5,
            child: ClipRect(
              clipBehavior: Clip.hardEdge,
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.color,
                ),
                child: Image.network(
                  'https://scontent.fclj1-2.fna.fbcdn.net/v/t1.6435-9/58377221_2417367858308020_8272458563759112192_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ekCUk_o9abkAX9fglmC&_nc_oc=AQmkbgE0NyM2BpHQVc19ess8kSb1fLrum_NPzti328kCvDiX-WVomGtcx2hngboT17o&tn=QmLtB-uyzUmNh59U&_nc_ht=scontent.fclj1-2.fna&oh=00_AT9YiFZouH-v-hY5fr1J32y66PY4VIud0zPCG_YuluOagA&oe=62CC0986',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(64),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About Me',
                        style: theme.textTheme.displaySmall,
                      ),
                      const Spacer(),
                      Text(
                        'Frontend developer',
                        style: theme.textTheme.headlineSmall!.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Lorem ipsum dolor sit amet. ' * 10,
                        style: theme.textTheme.bodyLarge,
                      ),
                      const Spacer(),
                      Text(
                        'Game developer',
                        style: theme.textTheme.headlineSmall!.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Lorem ipsum dolor sit amet. ' * 10,
                        style: theme.textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 16),
                      const Spacer(),
                      const Timeline(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
