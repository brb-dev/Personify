part of '../ind_record_screen.dart';

class _TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: Constants.linearGradientColorSet1(context: context),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Container(
          height: 32,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: Constants.linearGradientColorSet1(context: context),
            ),
            borderRadius: BorderRadius.circular(
              5,
            ),
            border: Border.all(
              color: Theme.of(context).canvasColor,
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context)
                    .colorScheme
                    .inversePrimary
                    .withOpacity(0.11),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
          child: TabBar(
            labelPadding: EdgeInsets.zero,
            labelColor: Theme.of(context).canvasColor,
            labelStyle: Theme.of(context).textTheme.bodySmall,
            unselectedLabelColor: Theme.of(context).canvasColor,
            unselectedLabelStyle: Theme.of(context).textTheme.bodySmall,
            indicatorPadding: const EdgeInsets.all(
              5.5,
            ),
            indicator: BoxDecoration(
              color: Theme.of(context).colorScheme.inverseSurface,
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: _speakerNames
                .map(
                  (e) => const Tab(
                    child: Text(
                      "John",
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

List<String> get _speakerNames =>
    ['John', 'Steve', 'Mike', 'Gori', 'Anna', '...'];
