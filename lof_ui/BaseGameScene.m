//
//  BaseGameScene.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/9/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "BaseGameScene.h"

@implementation BaseGameScene

-(void)didLoadFromCCB
{
    CCNode* mainMenu = [CCBReader nodeGraphFromFile:CCBI_MAINMENU_LAYER];
    [mainMenuLayer addChild:mainMenu];
    
    CCLOG(@"HomeScene: didLoadFromCCB");
}

@end
