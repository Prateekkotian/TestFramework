Pod::Spec.new do |s|
#1.
s.name               = "TestFramework"
#2.
s.version            = "1.0.0"
#3.
s.summary         = "Sort description of 'YLogging' framework"
#4.
s.homepage        = "http://www.yudiz.com"
#5.
s.license              = "MIT"
#6.
s.author               = "Prateek"
#7.
s.platform            = :ios, "10.0"
#8.
s.source              = { :git => "https://github.com/Prateekkotian/TestFramework.git", :tag => "1.0.0" }
#9.
s.source_files     = "YLogging", "YLogging/**/*.{h,m,swift}"
s.dependency "TwitterKit"
s.dependency "FacebookCore"
s.dependency "FacebookLogin"
s.dependency "GoogleSignIn"
s.static_framework = true
end
