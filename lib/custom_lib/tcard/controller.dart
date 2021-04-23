import 'dart:math';

import 'package:tinder_clone_flutter2/custom_lib/tcard/swip_info.dart';

import 'cards.dart';

/// Card controller
class TCardController {
  TCardState? state;

  void bindState(TCardState state) {
    this.state = state;
  }

  int get index => state?.frontCardIndex ?? 0;

  forward({SwipDirection? direction}) {
    if (direction == null) {
      direction =
          Random().nextBool() ? SwipDirection.Left : SwipDirection.Right;
    }

    state!.swipInfoList.add(SwipInfo(state!.frontCardIndex, direction));
    state!.runChangeOrderAnimation();
  }

  back() {
    state!.runReverseOrderAnimation();
  }

  get reset => state!.reset;

  void dispose() {
    state = null;
  }
}
