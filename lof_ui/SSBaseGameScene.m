//
//  SSBaseGameScene.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/8/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "SSBaseGameScene.h"

@implementation SSBaseGameScene

// @synthesize sceneName, ccbiFilePath;

-(id)init
{
    return [super init];
}

+(CCScene*)scene
{
    assert(YES);// should never call this method
    return Nil;
}

- (void)loadNextSceneLater: (ccTime)inTime
{
    SSLOG(@"SSBaseGameScene: doSomethingLater");
    [self schedule:@selector(loadNextSceneNow:) interval:0.0f repeat:0 delay:inTime];
//    [self doItLater:@selector(loadNextSceneNow:) inTime:inTime];
}

- (void)loadNextSceneNow:(ccTime)dtTime;
{
    SSLOG(@"SSBaseGameScene: doSomethingNow");
    [self unschedule:@selector(loadNextSceneNow:)];
}

//-(void)doItLater:(SEL)selector inTime:(ccTime)dtDelay
//{
//    [self schedule:@selector(selector:) interval:0.0f repeat:0 delay:dtDelay];
//}
//-(void)doItNow: (ccTime)dtTime
//{
//    [self unschedule:_cmd];
//}
@end
