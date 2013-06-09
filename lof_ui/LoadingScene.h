//
//  LoadingScene.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "headers.h"
#import "CCLayer.h"
#import "SSBaseGameScene.h"

@interface LoadingScene : SSBaseGameScene
{
    CCLayer* backgroundLayer;
    CCNode* bkNode;
}
//+ (LoadingScene*) sharedScene;
//+ (CCScene*) scene;
// loading data
//- (NSString *)sceneName;
- (void)loadingData;

@end
