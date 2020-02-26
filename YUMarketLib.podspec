#
# Be sure to run `pod lib lint YUMarketLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YUMarketLib'
  s.version          = '0.1.0'
  s.summary          = '一个商城库，目前是测试库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
测试制作pod公有库，只是做测试用的，没其他功能
                       DESC

  s.homepage         = 'https://github.com/yuhaiping/YUMarketLib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yuhaiping' => 'yuhaiping@huami.com' }
  s.source           = { :git => 'https://github.com/yuhaiping/YUMarketLib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform = :ios, '9.0'
  s.swift_version = '4.0'
  s.source_files = 'YUMarketLib/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YUMarketLib' => ['YUMarketLib/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
