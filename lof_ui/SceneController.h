//
//  SceneController.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/7/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "headers.h"

@interface SceneController : NSObject
{
    NSMapTable* sceneList;
//    CCScene* currentScene;
//    
////    NSString* currentSceneName;
//    NSString* nextSceneToRunName;
//    int nextSceneTransitionType;
}
+(SceneController*) sharedSceneController;

-(void)initData;
-(void)runScene: (CCScene*)scene withTransition:(int)transitionType;
-(void)startFromScene: (CCScene*)scene;


//-(void)releaseCurrentSceneWith: (CCScene*)newScene;
//
//-(CCScene*)loadSceneByName: (NSString*)sceneName;
//
//-(NSString*)nextScene: (NSString*)currentScene;
//-(NSString*)getCCBIBySceneName: (NSString*)sceneName;
//
//-(void) runNextSceneWithCurrentName: (NSString*) curSceneName;
////-(void)loadScene: (NSString*)theName: (int)transition;

+(void)loadIntroScene: (int)direction;
+(void)loadLoadingScene: (int)direction;
+(void)loadHomeScene: (int)direction;
+(void)loadCampainListScene: (int)direction;
+(void)loadBattleScene: (int)direction;
+(void)loadBattleResultScene:(int)direction;
+(void)loadGameHallScene:(int)direction;
+(void)loadConfigScene: (int)direction;

+(void)loadEndScene: (int)direction;
@end
