import 'package:darius_calugar/modules/home/home.dart';
import 'package:darius_calugar/modules/shared/shared.dart';
import 'package:flutter/material.dart';

class HomeAboutSection extends StatelessWidget {
  const HomeAboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final layout = Layout.of(context);

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (!layout.isPortrait)
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
            flex: layout.isLandscape ? 2 : 4,
            child: Padding(
              padding: layout.isLandscape
                  ? const EdgeInsets.symmetric(
                      horizontal: 64,
                      vertical: 32,
                    )
                  : layout.isSquare ? const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 16,
                    ) : const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: theme.textTheme.displaySmall,
                  ),
                  const SizedBox(height: 64),
                  Text(
                    'Frontend Developer',
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet. ' * 10,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Indie Game Dev',
                    style: theme.textTheme.headlineSmall!.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Lorem ipsum dolor sit amet. ' * 10,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 64),
                  const Timeline(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
