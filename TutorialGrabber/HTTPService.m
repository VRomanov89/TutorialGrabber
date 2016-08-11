//
//  HTTPService.m
//  TutorialGrabber
//
//  Created by Volodymyr Romanov on 8/11/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

#import "HTTPService.h"

@implementation HTTPService
    //Singleton - class instanciated only once for the app.
+ (id)instance {
    static HTTPService *sharedInstance = nil;
    @synchronized (self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc]init];
        }
    }
    return sharedInstance;
}

@end
