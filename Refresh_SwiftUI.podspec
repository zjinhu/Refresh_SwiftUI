
Pod::Spec.new do |s|
s.name             = 'Refresh_SwiftUI'
s.version          = '0.0.1'
s.summary          = 'Refresh_SwiftUI组件.'

s.description      = <<-DESC
			Refresh_SwiftUI
DESC

s.homepage         = 'https://github.com/jackiehu/'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'HU' => '814030966@qq.com' }
s.source           = { :git => 'https://github.com/jackiehu/Refresh_SwiftUI', :tag => s.version.to_s }

s.ios.deployment_target = "14.0"
s.swift_versions     = ['5.5','5.4','5.3','5.2','5.1','5.0']
s.requires_arc = true

s.frameworks   = "SwiftUI", "Foundation"#支持的框架

s.source_files = 'Sources/Refresh_SwiftUI/**/*'

end
