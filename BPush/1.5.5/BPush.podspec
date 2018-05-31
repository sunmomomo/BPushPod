Pod::Spec.new do |s|
  s.name         = 'BPush'
  s.version      = '1.5.5'
  s.summary      = 'Baidu Push SDK for iOS.'
  s.homepage     = 'https://github.com/sunmomomo/BPush'
  s.license      = { :type => 'Copyright', :text => 'LICENSE ©2015-2018 Baidu, Inc. All rights reserved' }
  s.author       = { 'sunmomomo' => '348384930@qq.com' }
  s.source       = { :git => 'https://github.com/sunmomomo/BPush.git',:tag => "#{s.version}"}
  
  s.ios.deployment_target = '7.0'
  s.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
  s.libraries = 'z'
  s.requires_arc = false
  s.default_subspecs = 'normal'
  
  s.subspec 'normal' do |sp|
    sp.source_files = 'File/normalversion/*.h'
    sp.public_header_files = 'File/normalversion/*.h'
    sp.vendored_libraries = 'File/normalversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end
  
  s.subspec 'idfa' do |sp|
    sp.source_files = 'File/idfaversion/*.h'
    sp.public_header_files = 'File/idfaversion/*.h'
    sp.vendored_libraries = 'File/idfaversion/*.a'
    sp.frameworks = 'Foundation','CoreTelephony','SystemConfiguration'
    sp.libraries = 'z'
  end
end
