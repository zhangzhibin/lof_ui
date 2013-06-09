//
//  SceneController.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/7/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "SceneController.h"

#import "SSBaseGameScene.h"

#import "SplashScene.h"
#import "LoadingScene.h"
#import "HomeScene.h"
#import "CampaignListScene.h"


static SceneController* defSceneController;
// static CCScene* runningScene;

@implementation SceneController
+(SceneController*)sharedSceneController
{
    if(defSceneController == Nil){
        defSceneController = [[SceneController alloc]init];
    }
    return defSceneController;
}

-(id)init
{
    if((self=[super init]))
    {
        [self initData];
//        nextSceneToRunName = NAME_UNDEFINED_SCENE;
    }
    return self;
}
-(void)dealloc
{
//    if( currentScene != Nil ){
//        [currentScene release];
//        currentScene = Nil;
//    }
    [super dealloc];
}
-(void)initData
{
    // Devon: for now we hardcoded the scene list
    // in future, we may use below method and initialize the data from a file
    // + (id) NSDictionary dictionaryWithContentsOfFile:(NSString *)path
    //
    sceneList = [[NSMapTable alloc]init];
    
    [sceneList setObject:CCBI_SPLASH_SCENE forKey:NAME_SPLASH_SCENE];
    [sceneList setObject:CCBI_LOADING_SCENE forKey:NAME_LOADING_SCENE];
    [sceneList setObject:CCBI_HOME_SCENE forKey:NAME_HOME_SCENE];
    [sceneList setObject:CCBI_CAMPAIGN_LIST_SCENE forKey:NAME_CAMPAIGN_LIST_SCENE];
    [sceneList setObject:CCBI_BATTLE_SCENE forKey:NAME_BATTLE_SCENE];
    [sceneList setObject:CCBI_BATTLE_RESULT_SCENE forKey:NAME_BATTLE_RESULT_SCENE];
    [sceneList setObject:CCBI_GAMEHALL_SCENE forKey:NAME_GAMEHALL_SCENE];
    
}
//
//-(void)releaseCurrentSceneWith: (CCScene*)newScene
//{
//    if( currentScene != Nil )
//    {
//        [currentScene release];
//        currentScene = Nil;
//    }
//    if( newScene != Nil )
//    {
//        currentScene = [newScene retain];
//    }
//}
//
//-(NSString*)nextScene: (NSString*)currentSceneName
//{
//    NSString* nextSceneName;
//    
//    [currentSceneName isEqualToString: NAME_SPLASH_SCENE];
//    
//    if( [currentSceneName isEqualToString: NAME_SPLASH_SCENE] ){
//        nextSceneName = NAME_LOADING_SCENE;
//    }if( [currentSceneName isEqualToString: NAME_SPLASH_SCENE] ){
//        nextSceneName = NAME_HOME_SCENE;
//    }
//    
//    return nextSceneName;
//}
//
//-(NSString*)getCCBIBySceneName:(NSString*)sceneName
//{
//    if( sceneName == Nil ){
//        return Nil;
//    }
//    return [sceneList objectForKey: sceneName];
//}
//
//-(CCScene*) loadSceneFromCCBi: (NSString*)ccbiFile
//{
//    CCScene* scene = [CCBReader sceneWithNodeGraphFromFile: ccbiFile ];
//    return scene;
//}
//
//-(CCScene*)loadSceneByName: (NSString*)sceneName
//{
//    NSString* ccbiFile = [self getCCBIBySceneName:sceneName];
//    if( ccbiFile == Nil )
//    {
//        SSLOG(@"Should not be none!");
//        assert(ccbiFile != Nil );
//        
//        return Nil;
//    }
//    CCScene* scene = [self loadSceneFromCCBi: ccbiFile ];
//    
//    return scene;
//}
//
//-(void)runSceneByName: (NSString*)sceneName
//{
//    if( currentScene ){
//
//        CCScene* curScene = [self loadSceneByName:sceneName];
//        CCScene* nextScene = [CCTransitionCrossFade transitionWithDuration:1.0f scene:currentScene];
//        [[CCDirector sharedDirector] replaceScene:nextScene];
//        
//        [self releaseCurrentSceneWith: curScene];
//
//    }else{
//        [self releaseCurrentSceneWith: [self loadSceneByName:sceneName]];
//        [[CCDirector sharedDirector] runWithScene:currentScene];
//    }
//}
//
//-(void) runSceneByName: (NSString*)sceneName withDelay:(ccTime)dtDelay
//{
//    [self runSceneByName:sceneName withDelay:dtDelay withTransistion:0];
//}
//
//-(void) runSceneByName: (NSString*)sceneName withDelay:(ccTime)dtDelay withTransistion:(int)transitionType
//{
//    if( dtDelay <= 0 ){
//        SSLOG(@"SceneController: runSceneByName, delay = NO");
//        [self runSceneByName:sceneName];
//    }else{
//        SSLOG(@"SceneController: runSceneByName, delay = YES");
//        nextSceneToRunName = sceneName;
//        nextSceneTransitionType = transitionType;
//        [self schedule:@selector(doLoadScene:) delay:dtDelay];
//    }
//}
//
//// where the delayed scene loaded
//-(void) doLoadSence: (ccTime)dt
//{
////    assert( [defSceneController.nextSceneToRunName isEqualToString: NAME_UNDEFINED_SCENE]);
//    
//    SSLOG(@"SceneController: doLoadScene");
//    [currentScene unschedule:@selector(doLoadScene:)];
//    [self runSceneByName:nextSceneToRunName];
//    nextSceneToRunName = NAME_UNDEFINED_SCENE;
//    
//}
//-(void)unschedule: (SEL)selector
//{
//    
//}
//-(void) runNextSceneWithCurrentName: (NSString*) curSceneName
//{
//    NSString* sceneToRun = [self nextScene:curSceneName];
//    [self runSceneByName:sceneToRun withDelay:1.0f withTransistion:0];
//    
//}
//-(void)schedule: (SEL)selector delay:(ccTime)delay
//{
//    [self schedule:selector interval:0.1f repeat:0 delay:delay];
//}
//
//-(void)schedule: (SEL)selector interval:(ccTime)interval repeat:(uint)repeat delay:(ccTime)delay
//{
//    assert( currentScene != Nil );
//    [currentScene schedule:selector interval:interval repeat:repeat delay:delay];
//}

//
-(void)runScene: (CCScene*)scene withTransition:(int)transitionType
{
    if( [CCDirector sharedDirector].runningScene == Nil){
        [[CCDirector sharedDirector] runWithScene:scene];
        return;
    }

    CCScene* nextScene = scene;
    if( transitionType <= SS_TRANSITION_NONE ){
    //    nextScene = scene;
    }else if( transitionType == SS_TRANSITION_FADE ) { // fade
        nextScene = [CCTransitionFade transitionWithDuration:3.0f scene:nextScene];
    }else if( transitionType == SS_TRANSITION_MOVE_IN_L ) { // Move In R
        nextScene = [CCTransitionMoveInL transitionWithDuration:1.0f scene:nextScene];
    }else if( transitionType == SS_TRANSITION_MOVE_IN_R ) { // move in L
        nextScene = [CCTransitionMoveInR transitionWithDuration:1.0f scene:nextScene];
    }
    
    [[CCDirector sharedDirector] replaceScene: nextScene];

}
-(void)startFromScene: (CCScene*)scene
{
    assert([CCDirector sharedDirector].runningScene == Nil);
    [[CCDirector sharedDirector] runWithScene:scene];
}
+(void)loadIntroScene: (int)direction
{
//    [self runSceneByName:[SplashScene scene]];
//   [[CCDirector sharedDirector] runWithScene:[SplashScene scene]];
//    [[SceneController sharedSceneController]startFromScene:[SplashScene scene]];
    [[SceneController sharedSceneController]runScene:[SplashScene scene] withTransition:direction];
}
+(void)loadLoadingScene: (int)direction
{
//    [self runSceneByName: NAME_LOADING_SCENE withDelay:1.0 withTransistion:1];
    [[SceneController sharedSceneController]runScene:[LoadingScene scene] withTransition:direction];
}
+(void)loadHomeScene: (int)direction
{
//    [self runSceneByName: NAME_HOME_SCENE withDelay:1.0 withTransistion:1];
    [[SceneController sharedSceneController]runScene:[HomeScene scene] withTransition:direction];
}
+(void)loadEndScene: (int)direction
{
//    [[SceneController sharedSceneController]runScene:[LoadingScene scene] withTransition:direction];
}

@end
