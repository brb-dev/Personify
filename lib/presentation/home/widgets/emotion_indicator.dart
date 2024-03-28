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
              //style: theme.textTheme.bodySmall,
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
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: const EdgeInsets.all(0),
                    color: AppColor.black,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    child: Container(
                      height: 16,
                      width: 144,
                      decoration: BoxDecoration(
                        color: AppColor.black,
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.skyBlue,
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
                                  colors: [
                                    AppColor.linearGradient1,
                                    AppColor.linearGradient2,
                                  ],
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
                                color: AppColor.white,
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: ratingProgress / 2),
                    child: Text(
                      rating,
                      //style: theme.textTheme.bodySmall,
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
