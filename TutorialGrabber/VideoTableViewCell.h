//
//  VideoTableViewCell.h
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/11/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Video;

@interface VideoTableViewCell : UITableViewCell
- (void)updateUI:(nonnull Video*)video;
@end
