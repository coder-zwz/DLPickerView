//
//  DLPickerView.h
//  demo
//
//  Created by diaolong on 16/2/1.
//  Copyright © 2016年 diaolong. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef void(^SelectedBlock)(id item);

@interface DLPickerView : UIView

- (instancetype)initWithPlistName:(NSString *)plistName
                 withSelectedItem:(nullable id)selectedData
                withSelectedBlock:(SelectedBlock)selectedBlock;

- (instancetype)initWithDataSource:(NSArray *)dataSource
                  withSelectedItem:(nullable id)selectedData
                 withSelectedBlock:(SelectedBlock)selectedBlock;

- (void)show;

@end
NS_ASSUME_NONNULL_END