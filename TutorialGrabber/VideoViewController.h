//
//  VideoViewController.h
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/12/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoViewController : UIViewController <UIWebViewDelegate>
@property(nonatomic,strong) Video *video;
@end
