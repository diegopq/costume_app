part of 'widgets.dart';

class NavButtons extends ConsumerWidget {
  const NavButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              ref.read(filtersProvider.notifier).changeEffect(true);
            },
            child: Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  size: 40,
                  color: Colors.white.withOpacity(0.4),
                ),
              ],
            ),
          ),
        ),
        // const Spacer(),
        Expanded(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              ref.read(filtersProvider.notifier).changeEffect(false);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.chevron_right,
                  size: 40,
                  color: Colors.white.withOpacity(0.4),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
