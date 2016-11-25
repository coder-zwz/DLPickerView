//
//  ViewController.m
//  DLPickerView
//
//  Created by zuweizhong on 2016/11/18.
//  Copyright © 2016年 zuweizhong. All rights reserved.
//

#import "ViewController.h"
#import "DLPickerView.h"

#define OwnerSeparator      @"  -  "
#define TimeSeparator       @":"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)selectOwner:(UIButton *)sender {
    DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@[@"Bei Jing",@"Shang Hai"], @[@"Li Lei",@"Han Meimei"]]
                                                       withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:OwnerSeparator]
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:[selectedItem componentsJoinedByString:OwnerSeparator] forState:UIControlStateNormal];
                                                      }
                                ];
    
    pickerView.shouldDismissWhenClickShadow = YES;
    
    [pickerView show];
}

- (IBAction)selectOwnerGender:(UIButton *)sender {
    DLPickerView *pickerView = [[DLPickerView alloc] initWithDataSource:@[@"Man",@"Woman"]
                                                       withSelectedItem:sender.titleLabel.text
                                                      withSelectedBlock:^(id selectedItem) {
                                                          [sender setTitle:selectedItem forState:UIControlStateNormal];
                                                      }
                                ];
    
    [pickerView show];
}

- (IBAction)selectTime:(UIButton *)sender {
    DLPickerView *pickerView = [[DLPickerView alloc] initWithPlistName:@"Time"
                                                      withSelectedItem:[sender.titleLabel.text componentsSeparatedByString:TimeSeparator]
                                                     withSelectedBlock:^(id selectedItem) {
                                                         [sender setTitle:[selectedItem componentsJoinedByString:TimeSeparator] forState:UIControlStateNormal];
                                                     }
                                ];
    
    [pickerView show];
}

@end
