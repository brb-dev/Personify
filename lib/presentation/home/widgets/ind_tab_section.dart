part of '../ind_record_screen.dart';

class _IndTabSection extends StatelessWidget {
  const _IndTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const _PersonalityScore(),
            const SizedBox(height: 6),
            for (var i = 0; i < _emotionData.length; i = i + 2)
              _PersonalityRowItem(
                data1: _emotionData[i],
                data2:
                    _emotionData.length % 2 != 0 && i == _emotionData.length - 1
                        ? null
                        : _emotionData[i + 1],
              ),
            ..._highlightData.map(
              (e) => _HighlightSection(
                title: e.title,
                answer: e.answer,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _PersonalityRowItem extends StatelessWidget {
  const _PersonalityRowItem({
    required this.data1,
    this.data2,
  });
  final _Data data1;
  final _Data? data2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _EmotionIndicator(
              title: data1.title,
              rating: data1.rating,
            ),
            data2 != null
                ? _EmotionIndicator(
                    title: data2!.title,
                    rating: data2!.rating,
                    isLeft: false,
                  )
                : Container(
                    padding: const EdgeInsets.only(left: 11),
                    width: 144,
                  ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

List<_Data> get _emotionData => [
      _Data(title: 'Trust', rating: '7'),
      _Data(title: 'Sentiment', rating: '2'),
      _Data(title: 'Empathy', rating: '5'),
      _Data(title: 'Charisma', rating: '7'),
      _Data(title: 'Trust', rating: '7'),
      _Data(title: 'Sentiment', rating: '2'),
      _Data(title: 'Empathy', rating: '5'),
      _Data(title: 'Charisma', rating: '7'),
    ];

class _Data {
  final String title;
  final String rating;
  _Data({
    required this.title,
    required this.rating,
  });
}

List<_HighlightData> get _highlightData => [
      _HighlightData(
        title: 'Quotes reflecting attitude towards me',
        answer: 'Quotes: here will be a set of quotes',
      ),
      _HighlightData(
        title: 'Conclusion',
        answer:
            'First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well as well asss',
      ),
      _HighlightData(
        title: 'Favorite topics and interests',
        answer: 'Sport. Speaker mentioned he likes a golf...',
      ),
      _HighlightData(
          title: 'Least favorite topics',
          answer:
              'First, speaker mentioned he keeps a healthy lifestyle, but he likes alcohol as well...'),
    ];

class _HighlightData {
  final String title;
  final String answer;
  _HighlightData({
    required this.title,
    required this.answer,
  });
}
