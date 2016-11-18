Pod::Spec.new do |s|
s.name             = 'DLPickerView'
s.version          = '1.0'
s.summary          = '一种支持单列数据选择，多列数据选择，plist读取数据选择的多功能数据选择器，只需改变选择器NSArray数据源即可'

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/coder-zwz/DLPickerView'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { ‘zuweizhong’ => '2416086440@qq.com' }
s.source           = { :git => 'https://github.com/coder-zwz/DLPickerView.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'

s.source_files = 'DLPickerView/DLPickerView/**/*'
s.frameworks = 'Foundation', 'StoreKit'
end
