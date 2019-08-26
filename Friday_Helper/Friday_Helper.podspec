Pod::Spec.new do |s|
s.name = "Friday_Helper"
s.version = "0.0.1'
s.summary = "my helper"
s.homepage = "https://github.com/fridayyue/Friday_Helper"
s.license = "MIT"
s.author = {"YueFriday" => "yuefriday@163.com"}
s.platform = :ios,"7.0"
s.source = {:git => "https://github.com/fridayyue/Friday_Helper.git",:tag => "0.0.1"}
s.source_files = "Friday_Helper/Helper","Friday_Helper/Helper/**/*.{h,m}"
s.framework  = "UIKit"
end
