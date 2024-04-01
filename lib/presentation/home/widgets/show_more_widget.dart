import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:personify/application/core/show_more/show_more_bloc.dart';
import 'package:personify/application/ind_record/ind_record_bloc.dart';

class ShowMoreWidget extends StatelessWidget {
  const ShowMoreWidget({
    super.key,
    required this.msg,
    required this.maxLine,
  });

  final String msg;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShowMoreBloc>(
      create: (_) => ShowMoreBloc(),
      child: _ShowMore(
        msg: msg,
        maxLine: maxLine,
      ),
    );
  }
}

class _ShowMore extends StatelessWidget {
  const _ShowMore({
    required this.msg,
    required this.maxLine,
  });
  final String msg;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowMoreBloc, ShowMoreState>(
      bloc: BlocProvider.of<ShowMoreBloc>(context)
        ..add(
          const ShowMoreEvent.init(),
        ),
      buildWhen: (previous, current) =>
          previous.isExpanded != current.isExpanded,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              msg,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    overflow: TextOverflow.visible,
                  ),
              softWrap: true,
              textAlign: TextAlign.center,
              maxLines: state.isExpanded ? null : maxLine,
              overflow: state.isExpanded ? null : TextOverflow.ellipsis,
            ),
            GestureDetector(
              onTap: () {
                context
                    .read<IndRecordBloc>()
                    .add(const IndRecordEvent.handleExpansion());
                BlocProvider.of<ShowMoreBloc>(context).add(
                  state.isExpanded
                      ? const ShowMoreEvent.showLess()
                      : const ShowMoreEvent.showMore(),
                );
              },
              child: Text(
                state.isExpanded ? 'Show Less' : 'Show More',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
