#
#  Be sure to run `pod spec lint GithubUserSearch.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "GithubUserSearch"
  spec.version      = "1.0.0"
  spec.summary      = "A short summary of GithubUserSearch."
  spec.description  = "A short description of GithubUserSearch."
  spec.homepage     = "https://github.com/piooneer77/GithubUserSearch"

  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.license      = "MIT"

  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.author             = { "Karem Gohar" => "piooneer77@me.com" }
  spec.social_media_url   = "https://github.com/piooneer77"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.platform     = :ios, "11.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source       = { :git => "https://github.com/piooneer77/GithubUserSearch.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.source_files  = "GithubUserSearch/**/*"
  spec.exclude_files = "GithubUserSearch/*.plist"
  # spec.public_header_files = "GithubUserSearch.h"

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.frameworks = "Foundation"

  # spec.dependency 'AFNetworking', '~> 4.0'
  
end
