part of '../ind_record_screen.dart';

class _EmotionIndicator extends StatelessWidget {
  const _EmotionIndicator({
    super.key,
    required this.title,
    required this.rating,
    this.isLeft = true,
  });
  final String title;
  final String rating;
  final bool isLeft;

  double get length => 14.4 * int.parse(rating);
  double get ratingProgress => 13.0 * int.parse(rating);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isLeft
          ? const EdgeInsets.only(
              top: 2,
              right: 11,
            )
          : const EdgeInsets.only(left: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: isLeft ? 6 : 7),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 16,
            width: 144,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: const EdgeInsets.all(0),
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: Container(
                        height: 16,
                        width: 144,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(
                                0,
                                0,
                              ),
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 14,
                                width: length,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    7,
                                  ),
                                  gradient: LinearGradient(
                                    colors: Constants.linearGradientColorSet2(
                                      context: context,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 14,
                                width: 14,
                                margin: EdgeInsets.only(left: ratingProgress),
                                decoration: BoxDecoration(
                                  color: Theme.of(context).canvasColor,
                                  borderRadius: BorderRadius.circular(
                                    7,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: ratingProgress / 2,
                      top: 1,
                    ),
                    child: Text(
                      rating,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
