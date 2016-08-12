//
//  HTTPService.h
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/11/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import <Foundation/Foundation.h>

// Block definition
typedef void (^onComplete) (NSDictionary * __nullable dataDict, NSString * __nullable errMessage);

@interface HTTPService : NSObject
+ (id) instance;
- (void)getTutorials:(nullable onComplete)completionHandler;
@end
