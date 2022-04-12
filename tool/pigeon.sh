flutter pub run pigeon \
  --input pigeons/messages.dart \
  --dart_out lib/src/generated/messages.dart \
  --objc_header_out ios/Classes/messages.h \
  --objc_source_out ios/Classes/messages.m \
  --java_out android/src/main/java/kr/dietfriends/plugins/fit/Messages.java \
  --java_package "kr.dietfriends.plugins.fit"