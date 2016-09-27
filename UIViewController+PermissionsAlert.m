//
//  UIViewController+PermissionsAlert.m
//  eTax
//
//  Created by 田广 on 16/7/28.
//  Copyright © 2016年 ysyc. All rights reserved.
//

#import "UIViewController+PermissionsAlert.h"
#import <AVFoundation/AVFoundation.h>
#import <AssetsLibrary/AssetsLibrary.h>

@implementation UIViewController (PermissionsAlert)


/**
 *  相机权限判断处理
 *
 *  @return 返回相机允许状态
 */
-(BOOL)cameraLimitsJudge{
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    
    //然后判断用户的权限
    if(authStatus == AVAuthorizationStatusAuthorized)
    {
        NSLog(@"允许状态");
        return YES;
    }
    else if (authStatus == AVAuthorizationStatusDenied)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"请在iPhone的“设置-隐私-相机”选项中，允许e税客访问你的相机。" message:nil delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil];
        [alert show];
        return NO;
    }
    else if (authStatus ==AVAuthorizationStatusNotDetermined)
    {
        NSLog(@"系统还未知是否访问，第一次开启相机时");
        return YES;
    }else {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"请在iPhone的“设置-隐私-相机”选项中，允许e税客访问你的相机。" message:nil delegate:nil cancelButtonTitle:@"好" otherButtonTitles:nil];
        [alert show];
        return NO;
    }

}
/**
 *  相册权限判断处理
 *
 *  @return 返回相册允许状态
 */
-(BOOL)photosLimitsJudge{
    ALAuthorizationStatus authStatus = [ALAssetsLibrary authorizationStatus];
    
    //然后判断用户的权限
    if(authStatus == ALAuthorizationStatusAuthorized)
    {
        NSLog(@"允许状态");
        return YES;
    }
    else if (authStatus == ALAuthorizationStatusDenied)
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"请在iPhone的“设置-隐私-相册”选项中，允许e税客访问你的相册。"
                                                       message:nil
                                                      delegate:self
                                             cancelButtonTitle:@"好"
                                             otherButtonTitles:nil];
        [alert show];
        
        return NO;
    }
    else if (authStatus ==ALAuthorizationStatusNotDetermined)
    {
        NSLog(@"系统还未知是否访问，第一次开启相机时");
        return YES;
    }else {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"请在iPhone的“设置-隐私-相册”选项中，允许e税客访问你的相册。"
                                                       message:nil
                                                      delegate:self
                                             cancelButtonTitle:@"好"
                                             otherButtonTitles:nil];
        [alert show];
        return NO;
    }
    
}

@end
