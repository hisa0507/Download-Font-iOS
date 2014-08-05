#
# Be sure to run `pod lib lint Download-Font-iOS.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Download-Font-iOS"
  s.version          = "1.0.0"
  s.summary          = "You can available downloadable font in your app using Download-Font-iOS."
  s.description      = <<-DESC
                       You can available downloadable font in your app using Download-Font-iOS.

                       DESC
  s.homepage         = "https://github.com/hisa0507/Download-Font-iOS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "hisa0507" => "hungry0507@hotmail.com" }
  s.source           = { :git => "https://github.com/hisa0507/Download-Font-iOS.git", :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/heeesa'
  sna.prefix_header_contents = ''

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Example/Download-Font-iOS/Classes/*.{h,m}'
  # s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
