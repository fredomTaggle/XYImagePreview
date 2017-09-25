//
//  XYPhotoPreview.h
//  XYPreviewDemo
//
//  Created by xuyangjiang on 2017/9/16.
//  Copyright © 2017年 xuyangjiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XYPhotoPreview : UIView

/**
 * @brief 初始化方法  图片以数组的形式传入, 需要显示的当前图片的索引
 *
 * @param  index 需要显示的当前图片的索引
 */
- (instancetype)initWithImageArray:(NSArray *)imageArray currentIndex:(NSInteger)index;
- (instancetype)initWithModelArray:(NSArray *)imageArray currentIndex:(NSInteger)index;
- (void)show;

@end
