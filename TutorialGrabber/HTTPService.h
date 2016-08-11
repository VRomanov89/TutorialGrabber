//
//  HTTPService.h
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/11/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HTTPService : NSObject
+ (id) instance;
- (void)getTutorials;
@end
