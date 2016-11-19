Pod::Spec.new do |s|

# 名称 使用的时候pod search [name]
s.name             = 'DLPickerView'
# 代码库的版本
s.version          = '1.0'
# 简介 
s.summary          = '一种支持单列数据选择，多列数据选择，plist读取数据选择的多功能数据选择器，只需改变选择器NSArray数据源即可'
# 描述
s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC
# 主页
s.homepage         = 'https://github.com/coder-zwz/DLPickerView'
# 许可证书类型，要和仓库的LICENSE 的类型一致
s.license          = { :type => 'MIT', :file => 'LICENSE' }
# 作者名称 和 邮箱 
s.author = {"zuweizhong" => "2416086440@qq.com" }
# 代码的Clone 地址 和 tag 版本
s.source           = { :git => 'https://github.com/coder-zwz/DLPickerView.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'
# 如果使用pod 需要导入哪些资源
s.source_files = 'DLPickerView/DLPickerView/**/*'
s.frameworks = 'Foundation', 'StoreKit'
# 框架是否使用的ARC 
s.requires_arc = true 

end
