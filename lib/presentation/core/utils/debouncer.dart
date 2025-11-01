import 'dart:async';
import 'dart:ui';

class Debouncer {
  final Duration delay;
  VoidCallback? _action;
  Timer? _timer;

  Debouncer({required this.delay});

  void run(VoidCallback action) {
    _action = action;
    _timer?.cancel();
    _timer = Timer(delay, _execute);
  }

  void _execute() {
    if (_action != null) {
      _action!();
      _action = null;
    }
  }

  void cancel() {
    _timer?.cancel();
    _action = null;
  }
}
