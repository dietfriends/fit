#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint fit.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'fit'
  s.version          = '0.0.1'
  s.summary          = 'Flutter SDK for iOS HealthKit, Android GoogleFit services and Samsung Health.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://pub.dev/packages/fit'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Passion Factory' => 'minsu.lee@dietfriends.kr' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
