# DLPickerView
##一种支持单列数据选择，多列数据选择，plist读取数据选择的多功能数据选择器，只需改变选择器NSArray数据源即可！
###主要功能:
![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator Screen Shot 2016年11月18日 上午10.27.58.png)
###多列数组数据源:
![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator Screen Shot 2016年11月18日 上午10.28.01.png)
####多列数组数据源代码生成
      DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@[@"Bei Jing",@"Shang Hai"], @[@"Li Lei",@"Han Meimei"]]
                                                       withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:OwnerSeparator]
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:[selectedItem componentsJoinedByString:OwnerSeparator] forState:UIControlStateNormal];
                                                      }
                                ];
    
    [pickerView show];
###单列数组数据源:
![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator Screen Shot 2016年11月18日 上午10.28.04.png)
####单列数组数据源代码生成
      DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@"Man",@"Woman"]
                                                       withSelectedItem:sender.titleLabel.text
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:selectedItem forState:UIControlStateNormal];
                                                      }
                                ];
    
      [pickerView show];
###Plist读取数据源:
![Image text](https://raw.githubusercontent.com/coder-zwz/DLPickerView/master/screenshots/Simulator Screen Shot 2016年11月18日 上午10.28.04.png)
####Plist读取数据源代码生成
      DLPickerView *pickerView = [[DLPickerView alloc] initWithPlistName:@"Time"
                                                      withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:TimeSeparator]
                                                     withSelectedBlock:^(id selectedItem) {
                                                         [sender setTitle:[selectedItem componentsJoinedByString:TimeSeparator] forState:UIControlStateNormal];
                                                     }
                                ];
      [pickerView show];


