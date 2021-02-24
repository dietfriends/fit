import 'package:fit/fit.dart';
import 'package:fit/src/generated/messages.pb.dart';
import 'package:fit/test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

class _ApiLogger implements TestHostFitApi {
  final List<String> log = [];
  ProtoWrapper message;

  @override
  void dispose() {
    log.add('dispose');
  }

  @override
  ProtoWrapper getActivityType(ProtoWrapper arg) {
    log.add('getActivityType');
    message = arg;
  }

  @override
  void initialize() {
    log.add('initialize');
  }

  @override
  ProtoWrapper listActivityLogs(ProtoWrapper arg) {
    log.add('listActivityLogs');
    message = arg;
    final response = ProtoWrapper();
    response.proto = ListActivityLogsResponse().writeToBuffer();
    return response;
  }
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('Fit', () {
    _ApiLogger log;

    setUp(() {
      log = _ApiLogger();
      TestHostFitApi.setup(log);
    });

    test('init', () async {
      await Fit.init();
      expect(log.log.last, 'initialize');
    });

    test('dispose', () async {
      await Fit.dispose();
      expect(log.log.last, 'dispose');
    });

    test('list activity logs', () async {
      await Fit.listActivityLogs(1, 2);
      expect(log.log.last, 'listActivityLogs');
      final message = ListActivityLogsRequest.fromBuffer(log.message.proto);
      expect(message.startTime, 1);
      expect(message.endTime, 2);
    });
  });
}
