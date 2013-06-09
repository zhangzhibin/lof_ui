//
//  SplashScene.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "SplashScene.h"
#import "LoadingScene.h"
//#import "CCBReader.h"

@implementation SplashScene
// Helper class method that creates a Scene with the HelloWorldLayer as the only child.
//+(CCScene *) scene
//{
///*
//	// 'scene' is an autorelease object.
//	CCScene *scene = [CCScene node];
//	
//	// 'layer' is an autorelease object.
//	SplashScene *layer = [SplashScene node];
//	
//	// add layer as a child to scene
//	[scene addChild: layer];
//*/
//    CCScene* scene = [CCBReader sceneWithNodeGraphFromFile:@"splash.ccbi"];
//	// return the scene
//	return scene;
//}
//+(NSString*)sceneName
//{
//    return NAME_SPLASH_SCENE;
//}
//-(NSString*)sceneName
//{
//    return NAME_SPLASH_SCENE;
//}
+(CCScene*) scene
{
    CCScene* scene = [CCBReader sceneWithNodeGraphFromFile:CCBI_SPLASH_SCENE];
    return scene;
}

-(void)loadNextSceneNow:(ccTime)dtTime
{
    SSLOG(@"SplashScene: doSomethingNow begin");
    // always call super to unschedule the selecotr
    [super loadNextSceneNow:dtTime];
    
    [SceneController loadLoadingScene:SS_SCENE_DIRECTION_NONE];
    
    SSLOG(@"SplashScene: doSomethingNow done");
}

-(id)init
{
    SSLOG(@"SplashScene: init");
    if((self = [super init])){
        
    }
    
    return self;
}
-(void)dealloc
{
    SSLOG(@"SplashScene: dealloc");
    [super dealloc];
}
-(void) onEnter
{
	[super onEnter];
    SSLOG(@"SplashScene: onEnter");
}
- (void)onEnterTransitionDidFinish
{
    SSLOG(@"SplashScene: onEnterTransitionDidFinish begin");
    [super onEnterTransitionDidFinish];
    
    [self loadNextSceneLater: 1.0f];

    SSLOG(@"SplashScene: onEnterTransitionDidFinish done");
}
-(void) onExit
{
    [super onExit];
    SSLOG(@"SplashScene: onExit");
}

@end
