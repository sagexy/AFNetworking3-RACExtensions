#
# Be sure to run `pod lib lint AFNetworking3-RACExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AFNetworking3-RACExtensions'
  s.version          = '0.1.0'
  s.summary          = 'Add RAC support for AFNetworking 3.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sagexy/AFNetworking3-RACExtensions'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sagexy' => 'sagexy@qq.com' }
  s.source           = { :git => 'https://github.com/sagexy/AFNetworking3-RACExtensions.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'AFNetworking3-RACExtensions/Classes/**/*'

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking/NSURLSession', '~> 3.0'
    ss.dependency 'ReactiveObjC'
    ss.source_files = 'AFNetworking3-RACExtensions/Classes/AFHTTPSessionManager+RACSupport.{h,m}'
  end
end
