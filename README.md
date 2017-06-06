# DLPickerView
##一种支持单列数据选择，多列数据选择，plist读取数据选择的多功能数据选择器，只需改变选择器NSArray数据源即可！
## Installation

### CocoaPods

DLPickerView is available on [CocoaPods](https://cocoapods.org/). Just add the following to your project Podfile:

```ruby
pod 'DLPickerView' # Podfile
```
### 主要功能:

![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator1.png)

### 多列数组数据源:

![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator2.png)

```Objective-C
//多列数组数据源
DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@[@"Bei Jing",@"Shang Hai"], @[@"Li Lei",@"Han Meimei"]]
                                                       withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:OwnerSeparator]
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:[selectedItem componentsJoinedByString:OwnerSeparator] forState:UIControlStateNormal];
                                                      }
                                ];
[pickerView show];
```
### 单列数组数据源:

![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator3.png)

```Objective-C
//单列数组数据源
DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@"Man",@"Woman"]
                                                       withSelectedItem:sender.titleLabel.text
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:selectedItem forState:UIControlStateNormal];
                                                      }
                                ];
[pickerView show];
```
### Plist读取数据源:

![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator4.png)

```Objective-C
//Plist读取数据源
DLPickerView *pickerView = [[DLPickerView alloc] initWithPlistName:@"Time"
                                                      withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:TimeSeparator]
                                                     withSelectedBlock:^(id selectedItem) {
                                                         [sender setTitle:[selectedItem componentsJoinedByString:TimeSeparator] forState:UIControlStateNormal];
                                                     }
                                ];
[pickerView show];
```


