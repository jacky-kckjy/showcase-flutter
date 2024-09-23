import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:showcase_showcase_flutter/app/app_dimens.dart';
import 'package:lottie/lottie.dart';

class PullToRefreshWidget extends StatefulWidget {

  final RefreshCallback? onRefresh;
  const PullToRefreshWidget({
    super.key,
    this.onRefresh,
  });

  @override
  State<StatefulWidget> createState() => PullToRefreshWidgetState();
}

class PullToRefreshWidgetState extends State<PullToRefreshWidget>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      refreshIndicatorExtent: 60,
      builder: (
        context,
        state,
        double pulledExtent,
        double refreshTriggerPullDistance,
        double refreshIndicatorExtent,
      ) {
        if (state == RefreshIndicatorMode.refresh ||
            state == RefreshIndicatorMode.armed) {
          _controller?.repeat();
        } else {
          _controller?.animateTo(
            pulledExtent / refreshTriggerPullDistance,
            duration: Duration.zero,
            curve: Curves.easeInOutCubic,
          );
        }
        return Padding(
          padding: const EdgeInsets.only(top: AppDimens.paddingSmall),
          child: Lottie.asset(
            controller: _controller,
            onLoaded: (composition) {
              _controller
                ?..duration = composition.duration
                ..forward();
            },
            "resources/lotties/loading.json",
            width: AppDimens.iconLarger,
            height: AppDimens.iconLarger,
          ),
        );
      },
      onRefresh: widget.onRefresh,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}

class PullToRefreshScrollPhysic extends ClampingScrollPhysics {
  const PullToRefreshScrollPhysic({
    super.parent,
  });

  final bool _canUnderscroll = true;

  /// Removes the overscroll and underscroll conditions from the original
  /// [ClampingScrollPhysics.applyBoundaryConditions].
  @override
  double applyBoundaryConditions(ScrollMetrics position, double value) {
    if (value < position.pixels &&
        position.pixels <= position.minScrollExtent) {
// underscroll
      return _canUnderscroll ? 0.0 : value - position.pixels;
    }
    if (position.maxScrollExtent <= position.pixels &&
        position.pixels < value) {
// overscroll
      return Platform.isIOS ? 0.0 : value - position.pixels;
    }
    if (value < position.minScrollExtent &&
        position.minScrollExtent < position.pixels) {
// hit top edge
      return value - position.minScrollExtent;
    }
    if (position.pixels < position.maxScrollExtent &&
        position.maxScrollExtent < value) {
// hit bottom edge
      return value - position.maxScrollExtent;
    }
    return 0.0;
  }

  @override
  ClampingScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return PullToRefreshScrollPhysic(
      parent: buildParent(ancestor),
    );
  }

  @override
  bool shouldAcceptUserOffset(ScrollMetrics position) => true;
}
