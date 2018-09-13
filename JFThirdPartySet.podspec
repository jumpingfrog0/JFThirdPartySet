#
# Be sure to run `pod lib lint JFThirdPartySet.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JFThirdPartySet'
  s.version          = '0.1.0'
  s.summary          = 'A set of thrid party code wrote in Objective-C.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A set of thrid party code wrote in Objective-C.
                       DESC

  s.homepage         = 'https://github.com/jumpingfrog0/JFThirdPartySet'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jumpingfrog0' => 'jumpingfrog0@gmail.com' }
  s.source           = { :git => 'https://github.com/jumpingfrog0/JFThirdPartySet.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Source/Classes/**/*'

  # attach non-arc files
  non_arc_files = ['Source/Classes/GTM/GTMStringEncoding.{h,m}']
  s.exclude_files= non_arc_files
  s.subspec 'no-arc' do |sna|
  	sna.requires_arc = false
	sna.source_files = non_arc_files
  end
  
  # s.resource_bundles = {
  #   'JFThirdPartySet' => ['${Source}/Assets/*.png']
  # }

  # s.public_header_files = 'Source/Classes/**/*.h'
  s.frameworks = 'Foundation', 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
