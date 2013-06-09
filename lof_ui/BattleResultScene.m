//
//  BattleResultScene.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/9/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "BattleResultScene.h"

@implementation BattleResultScene
+(CCScene*) scene
{
    CCScene* scene_ = [CCBReader sceneWithNodeGraphFromFile: CCBI_HOME_SCENE];
    return scene_;
}

@end
