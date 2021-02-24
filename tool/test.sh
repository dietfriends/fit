flutter test --coverage --machine > machine.jsonl
flutter pub run remove_from_coverage -f coverage/lcov.info -r '.freezed.dart$' -r '.g.dart$' -r '^lib/src/generated' -r 'lib/src/messages.dart'
genhtml coverage/lcov.info -o coverage --no-function-coverage -s -p `pwd`
open ./coverage/index.html