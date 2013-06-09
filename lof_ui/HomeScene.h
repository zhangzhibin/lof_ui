//
//  HomeScene.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "CCLayer.h"
#import "headers.h"

@interface HomeScene : SSBaseGameScene
{
    CCLayer* mainMenuLayer;
    CCNode* mainMenu;
    CCLayer* backgroundLayer;
    CCNode* backgroundNode;
}
+(CCScene*)scene; // return current scene

// - (void)doSomethingLater: (ccTime)inTime;
- (void)loadNextSceneNow:(ccTime)dtTime;

@end
