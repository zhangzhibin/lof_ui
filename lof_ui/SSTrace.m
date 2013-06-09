//
//  SSTrace.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/8/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

// our own trace tool

#import "SSTrace.h"

static SSTrace* globalSSTrace;

@implementation SSTrace

@synthesize traceEnabled;
-(id)init
{
    // don't call this method manually
    if( (self=[super init])){
        
    }
    return self;
}

+(SSTrace*)sharedTrace
{
    if( globalSSTrace == Nil ){
        globalSSTrace = [[SSTrace alloc]init];
    }
    return globalSSTrace;
}

-(void)TraceDebug:(NSString *)format, ...
{
    if( traceEnabled ){
        va_list args;
        va_start(args, format);
        NSLogv(format, args);
        va_end(args);
    }
}

@end
