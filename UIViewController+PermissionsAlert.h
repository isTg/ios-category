//
//  UIViewController+PermissionsAlert.h
//  eTax
//
//  Created by 田广 on 16/7/28.
//  Copyright © 2016年 ysyc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PermissionsAlert)


/**
 *  相机权限判断处理
 *
 *  @return 返回相机允许状态
 */
-(BOOL)cameraLimitsJudge;

/**
 *  相册权限判断处理
 *
 *  @return 返回相册允许状态
 */
-(BOOL)photosLimitsJudge;

@end
