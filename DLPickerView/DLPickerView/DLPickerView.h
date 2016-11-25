//
//  DLPickerView.h
//  
//
//  Created by zuweizhong on 16/2/1.
//  Copyright © 2016年 visoft. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SelectedBlock) (id item);

@interface DLPickerView : UIView

/**
 取消按钮
 */
@property(nonatomic,strong)UIButton * cancelBtn;
/**
 确定按钮
 */
@property(nonatomic,strong)UIButton * confirmBtn;
/**
 点击阴影是否移除PickerView。默认NO
 */
@property(nonatomic,assign)BOOL shouldDismissWhenClickShadow;


/**
 创建plist数据源PickerView

 @param plistName plist文件名
 @param selectedData 默认选中的行(可传数组)
 @param selectedBlock 选择后的回调
 @return 实例
 */
- (instancetype)initWithPlistName:(NSString *)plistName
                 withSelectedItem:(nullable id)selectedData
                withSelectedBlock:(SelectedBlock)selectedBlock;

/**
 创建数组数据源PickerView

 @param dataSource 数组数据源
 @param selectedData 默认选中的行(可传数组)
 @param selectedBlock 选择后的回调
 @return 实例
 */
- (instancetype)initWithDataSource:(NSArray *)dataSource
                  withSelectedItem:(nullable id)selectedData
                 withSelectedBlock:(SelectedBlock)selectedBlock;

/**
 显示DLPickerView
 */
- (void)show;

/**
 移除DLPickerView

 @param completion 移除完成的Block
 */
- (void)hide:(void (^)(void))completion;

@end

NS_ASSUME_NONNULL_END
