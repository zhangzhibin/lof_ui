//
//  SplashScene.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//
#import "cocos2d.h"
#import "CCLayer.h"
#import "headers.h"

@interface SplashScene : SSBaseGameScene
{
    CCLayerColor* bkLayer;
}

+(CCScene*)scene; // return current scene

// - (void)doSomethingLater: (ccTime)inTime;
- (void)loadNextSceneNow:(ccTime)dtTime;


@end
