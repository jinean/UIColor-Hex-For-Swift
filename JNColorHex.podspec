Pod::Spec.new do |s|
  s.name             = "JNColorHex"
  s.version          = "1.0.0"
  s.summary          = "xxx"
  s.homepage         = "https://github.com/jinean/UIColor-Hex-For-Swift"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "liyan" => "" }
  s.source           = { :git => "https://github.com/jinean/UIColor-Hex-For-Swift.git", :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.tvos.deployment_target = '9.0'
  s.requires_arc = true
  s.source_files = "*.{swift}"
end