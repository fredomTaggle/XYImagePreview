//
//  XYImageModel.h
//  XYPreviewDemo
//
//  Created by xuyangjiang on 2017/9/16.
//  Copyright © 2017年 xuyangjiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XYImageModel : NSObject

@property (nonatomic, copy) NSString *idStr;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, copy) NSString *imageUrlStr;
@property (nonatomic, strong) NSIndexPath *indexPath;
@property (nonatomic, assign) BOOL ifUpload;//图片默认是否已上传，默认YES

@end
