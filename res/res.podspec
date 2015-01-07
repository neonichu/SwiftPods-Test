Pod::Spec.new do |s|
  s.name             = "res"
  s.version          = "0.1.0"
  s.summary          = "MIND BLOWN"
  s.homepage         = "https://github.com/"
  s.license          = 'MIT'
  s.author           = { "Boris Bügling" => "boris@icculus.org" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/res.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'

  s.source_files = '*.swift'

  s.dependency 'KeychainItemWrapper', '~> 1.2'
end
