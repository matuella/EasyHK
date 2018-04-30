Pod::Spec.new do |s|

  s.name         = 'EasyHK'
  s.version      = '0.0.6'
  s.summary      = 'Making life with HealthKit easier :)'

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
  	Keeping things short and crystal-clear to make the HealthKit interaction succinctly.
  DESC

  s.homepage     = 'https://github.com/matuella/EasyHK'
  # s.screenshots  = 'www.example.com/screenshots_1.gif', 'www.example.com/screenshots_2.gif'
  s.license      = { :type => 'Apache License, Version 2.0', :file => 'LICENSE' }
  s.author             = { 'Guilherme Carlos Matuella' => 'guilherme1matuella@gmail.com' }
  # s.social_media_url   = 'http://twitter.com/Guilherme Carlos Matuella'

  s.platform     = :ios, '9.0'
  #  When using multiple platforms
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  # s.watchos.deployment_target = '2.0'
  # s.tvos.deployment_target = '9.0'
	
	s.source       = { :git => 'https://github.com/matuella/EasyHK.git', :tag => s.version }
  s.source_files  = 'Classes', 'EasyHK/Classes/**/*.{swift}'
  s.swift_version = '4.0'
end