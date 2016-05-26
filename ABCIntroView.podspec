#
# Be sure to run `pod lib lint ABCIntroView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ABCIntroView'
  s.version          = '0.1.0'
  s.summary          = 'ABCIntroView is an easy to Onboarding'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'ABCIntroView is an easy to use onboarding which allows you to introduce your users to the applicaiton before reaching the Main Screen.'

  s.homepage         = 'https://github.com/AdamBCo/ABCIntroView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Adam Cooper" => "*****" }
  s.source           = { :git => 'https://github.com/AdamBCo/ABCIntroView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/AdamBCo'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ABCIntroView/Classes/**/*'
  s.frameworks = 'UIKit'
end
