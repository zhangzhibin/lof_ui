//
//  HomeScene.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "HomeScene.h"
#import "MainMenuLayer.h"

//static HomeScene* theScene;

@implementation HomeScene

//+(HomeScene*)sharedScene
//{
//    return theScene;
//}

-(void)didLoadFromCCB
{
//    theScene = self;
    backgroundNode = [CCBReader nodeGraphFromFile: CCBI_BACKGROUND_LAYER];
    [backgroundLayer addChild:backgroundNode];
    
    mainMenu = [CCBReader nodeGraphFromFile:CCBI_MAINMENU_LAYER];
    [mainMenuLayer addChild:mainMenu];
//    [mainMenuLayer addChild:(CCNode*)[MainMenuLayer node]];
    CCLOG(@"HomeScene: didLoadFromCCB");
    
}
-(id)init
{
    if( (self=[super init])){
        
    }
    CCLOG(@"HomeScene: init");
    return self;
}
-(void) dealloc
{
    CCLOG(@"HomeScene: dealloc");
    [super dealloc];
}

+(CCScene*) scene
{
    CCScene* scene_ = [CCBReader sceneWithNodeGraphFromFile: CCBI_HOME_SCENE];
    return scene_;
}

- (void)loadNextSceneNow:(ccTime)dtTime
{
    [super loadNextSceneNow:dtTime];
}

- (void) ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView: [touch view]];
    
    NSLog(@"HomeScene: TouchBegan (%f, %f)", touchLocation.x, touchLocation.y);
}

- (void) ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint touchLocation = [touch locationInView: [touch view]];
    
    NSLog(@"HomeScene: TouchMoved (%f, %f)", touchLocation.x, touchLocation.y);
}
-(void)onEnter
{
    CCLOG(@"HomeScene: onEnter begin");
    [super onEnter];
    CCLOG(@"HomeScene: onEnter done");
}
-(void)onExit
{
    [super onExit];
    CCLOG(@"HomeScene: onExit");
}
@end
