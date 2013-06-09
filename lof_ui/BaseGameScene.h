//
//  BaseGameScene.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/9/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "CCLayer.h"
#import "MainMenuLayer.h"
#import "headers.h"

@interface BaseGameScene : SSBaseGameScene
{
    CCSprite* backgroundNode;
    CCLabelTTF* sceneNameLabel;
    MainMenuLayer* mainMenuLayer;
}

@end
