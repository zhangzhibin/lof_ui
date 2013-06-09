//
//  SSTrace.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/8/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SSTrace : NSObject
{
    BOOL traceEnabled;
}
@property BOOL traceEnabled;

+(SSTrace*)sharedTrace;
// NSLog(NSString *format, ...)
-(void)TraceDebug: (NSString *)format, ...;
//-(BOOL)isTraceEnabled;
@end


#define SSLOG(...) \
([[SSTrace sharedTrace]TraceDebug: (__VA_ARGS__)])

#define ENABLE_DEBUG_TRACE \
([SSTrace sharedTrace].traceEnabled = YES)

#define DISABLE_DEBUG_TRACE \
([SSTrace sharedTrace].traceEnabled = NO)