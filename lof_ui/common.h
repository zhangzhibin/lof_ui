//
//  common.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/8/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//
//////////////////////////////////////////
// define macro, enum for global usage
//////////////////////////////////////////
#import <Foundation/Foundation.h>
#import "headers.h"

//typedef enum{
//    emUndefinedScene = 0,
//    emSplashScene = 1,
//    emLoadingScene,
//    emHomeScene,
//    emCampaignListScene,
//    emBattleScene,
//    emBattleResultScene,
//    emGameHallScene,
//    emMaxScene,
//}enumSceneID;

#define NAME_UNDEFINED_SCENE        (@"undefinedScene")

#define NAME_SPLASH_SCENE           (@"splashScene")
#define NAME_LOADING_SCENE          (@"loadingScene")
#define NAME_HOME_SCENE             (@"homeScene")
#define NAME_CAMPAIGN_LIST_SCENE    (@"campaignListScene")
#define NAME_BATTLE_SCENE           (@"battleScene")
#define NAME_BATTLE_RESULT_SCENE    (@"battleResultScene")
#define NAME_GAMEHALL_SCENE         (@"gameHallScene")

#define CCBI_UNDEFINED_SCENE        (@"undefinedScene.ccbi")

#define CCBI_SPLASH_SCENE           (@"splashScene.ccbi")
#define CCBI_LOADING_SCENE          (@"loadingScene.ccbi")
#define CCBI_HOME_SCENE             (@"homeScene.ccbi")
#define CCBI_CAMPAIGN_LIST_SCENE    (@"campaignListScene.ccbi")
#define CCBI_BATTLE_SCENE           (@"battleScene.ccbi")
#define CCBI_BATTLE_RESULT_SCENE    (@"battleResultScene.ccbi")
#define CCBI_GAMEHALL_SCENE         (@"gameHallScene.ccbi")
#define CCBI_CONFIG_SCENE           (@"configScene.ccbi")

#define CCBI_BACKGROUND_LAYER       (@"backgroundLayer.ccbi")
#define CCBI_MAINMENU_LAYER         (@"mainMenu.ccbi")

// transition type
#define SS_TRANSITION_NONE          0
#define SS_TRANSITION_FADE          1
#define SS_TRANSITION_MOVE_IN_L     2
#define SS_TRANSITION_MOVE_IN_R     3

#define SS_SCENE_DIRECTION_START        SS_TRANSITION_NONE
#define SS_SCENE_DIRECTION_NONE         SS_TRANSITION_FADE
#define SS_SCENE_DIRECTION_FORWARD      SS_TRANSITION_MOVE_IN_R
#define SS_SCENE_DIRECTION_BACKWARD     SS_TRANSITION_MOVE_IN_L

//////////////////////////////



//#define __CCLOG(s, ...) \
//([NSLog(@"%@",[NSString stringWithFormat:(s), ##__VA_ARGS__])
//
//#if !defined(COCOS2D_DEBUG) || COCOS2D_DEBUG == 0
//#define CCLOG(...) do {} while (0)
//#define CCLOGWARN(...) do {} while (0)
//#define CCLOGINFO(...) do {} while (0)
//
//#elif COCOS2D_DEBUG == 1
//#define CCLOG(...) __CCLOG(__VA_ARGS__)
//#define CCLOGWARN(...) __CCLOGWITHFUNCTION(__VA_ARGS__)
//#define CCLOGINFO(...) do {} while (0)
//
//#elif COCOS2D_DEBUG > 1
//#define CCLOG(...) __CCLOG(__VA_ARGS__)
//#define CCLOGWARN(...) __CCLOGWITHFUNCTION(__VA_ARGS__)
//#define CCLOGINFO(...) __CCLOG(__VA_ARGS__)
//#endif

