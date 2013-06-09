//
//  LoadingScene.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "LoadingScene.h"
#import "BackgroundLayer.h"
#import "HomeScene.h"

//static LoadingScene* theScene;

@implementation LoadingScene

//+(LoadingScene*) sharedScene
//{
//    return theScene;
//}
//+ (NSString*)sceneName
//{
//    return NAME_LOADING_SCENE;
//}
//- (NSString*)sceneName
//{
//    return NAME_LOADING_SCENE;
//}
- (void) didLoadFromCCB
{
//    theScene = self;
    bkNode = [CCBReader nodeGraphFromFile:CCBI_BACKGROUND_LAYER];
    [backgroundLayer addChild:bkNode];
    SSLOG(@"LoadingScene: didLoadFromCCB()");
}

+(CCScene*)scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCBReader sceneWithNodeGraphFromFile:CCBI_LOADING_SCENE];

	return scene;
}
-(void)loadNextSceneNow:(ccTime)dtTime
{
    [self loadingData];
//    [[SceneController sharedSceneController] runScene:[LoadingScene scene] withTransition:SS_TRANSITION_FORWARD];
    [SceneController loadHomeScene:SS_SCENE_DIRECTION_FORWARD];
}
- (id) init
{

    if( (self = [super init] )){

    }

    SSLOG(@"LoadingScene: init");
    return self;
}
-(void)dealloc
{
    SSLOG(@"LoadingScene: dealloc");
    [super dealloc];
}

- (void)onEnter
{
	[super onEnter];
    SSLOG(@"LoadingScene: enter");
}
- (void)onEnterTransitionDidFinish
{
    SSLOG(@"LoadingScene: onEnterTransitionDidFinish begin");
    [super onEnterTransitionDidFinish];

//    [self schedule:@selector(loadingData:) interval:0.0f repeat:0 delay:1.0f ];
//    [[SceneController sharedSceneController] runNextSceneWithCurrentName:[self sceneName]];
    [self loadNextSceneLater:5.0f];
    SSLOG(@"LoadingScene: onEnterTransitionDidFinish done");
}

- (void)onExit
{
    [super onExit];
    SSLOG(@"LoadingScene: exit");
}
- (void)onExitTransitionDidStart
{
    [super onExitTransitionDidStart];

    SSLOG(@"LoadingScene: onExitTransitionDidStart");
}
- (void) ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView: [touch view]];
    
    //    dragon.xTarget = touchLocation.x;
//    SSLOG(@"LoadingScene: TouchBegan (%f, %f)", touchLocation.x, touchLocation.y);
}

- (void) ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView: [touch view]];
    
    //    dragon.xTarget = touchLocation.x;
//    SSLOG(@"LoadingScene: TouchMoved (%f, %f)", touchLocation.x, touchLocation.y);
}

- (void) loadingData
{
    SSLOG(@"LoadingScene: loading data");
//    [self unschedule:_cmd];
//    CCScene* homeScene = [CCBReader sceneWithNodeGraphFromFile:@"homeScene.ccbi"];
//    CCDirector* director_ = [CCDirector sharedDirector];
//    CCScene* nextScene = [CCTransitionMoveInR transitionWithDuration:1.0f scene:homeScene];
//	[director_ replaceScene: nextScene];
}
@end
