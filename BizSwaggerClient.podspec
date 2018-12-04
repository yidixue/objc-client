#
# Be sure to run `pod lib lint BizSwaggerClient.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BizSwaggerClient'
  s.version          = '0.1.0'
  s.summary          = 'A short description  BizSwaggerClient.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yidixue/objc-client'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'partylike@126.com' => 'partylike@126.com' }
  s.source           = { :git => 'https://github.com/yidixue/objc-client.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'BizSwaggerClient/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BizSwaggerClient' => ['BizSwaggerClient/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'SystemConfiguration'
  s.dependency 'AFNetworking', '~> 3'
  s.dependency 'JSONModel', '~> 1.2'
  s.dependency 'ISO8601', '~> 0.6'
end
