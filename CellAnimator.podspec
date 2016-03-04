#
#  Be sure to run `pod spec lint CellAnimator.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "CellAnimator"
  s.version      = "0.1.3"
  s.summary      = "Cool animations for UITableViewCell in Swift language"

  s.description  = "This pod provides the ability to animate UITableViewCell when they appear."

  s.homepage     = "https://github.com/warchimede/CellAnimator"

  s.license      = "MIT"
  s.author             = { "William Archimede" => "william.archimede@hoodbrains.com" }
  s.source       = { :git => "https://github.com/warchimede/CellAnimator.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/warchimede'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files  = "CellAnimator/CellAnimator.swift"

end
