//
//  MainMenuLayer.m
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "MainMenuLayer.h"
#import "headers.h"

//static MainMenuLayer* theMenu;

@implementation MainMenuLayer
-(void) didLoadFromCCB
{
    CCLOG(@"MainMenuLayer: didLoadFromCCB");
//    theMenu = self;
}
//+(MainMenuLayer*) sharedMenu
//{
//    return theMenu;
//}

//-(void)onEnter
//{
//    [super onEnter];
//    [self setTouchEnabled: YES];
//    CCLOG(@"MainMenuLayer: onEnter");
//}
-(id)init
{
    if( (self=[super init])){
        
    }
    CCLOG(@"MainMenuLayer: init");
    return self;
}

-(void) dealloc
{
    CCLOG(@"MainMenuLayer: dealloc");
    [super dealloc];
}

-(void) onMenuItemHome:(id)sender
{
    [SceneController loadHomeScene:SS_TRANSITION_FADE];
    NSLog(@"menu Home");
}

-(void) onMenuItemCampaign:(id)sender
{
//    [SceneController loadCampainListScene:SS_SCENE_DIRECTION_FORWARD];
    NSLog(@"menu campaign");
}
-(void) onMenuItemHall:(id)sender
{
    NSLog(@"menu Hall");
}

-(void) onMenuItemSkills:(id)sender
{
    NSLog(@"menu skills");
}
-(void) onMenuItemItems:(id)sender
{
    NSLog(@"menu items");
}

-(void) onMenuItemSocial:(id)sender
{
    NSLog(@"menu social");
}
-(void) onMenuItemStore:(id)sender
{
    NSLog(@"menu store");
}

-(void) onMenuItemSettings:(id)sender
{
    NSLog(@"menu settings");
    //    CCScene* loadingScene = [CCBReader sceneWithNodeGraphFromFile:@"loadingScene.ccbi"];
//    CCScene* nextScene = [CCBReader sceneWithNodeGraphFromFile:@"loadingScene.ccbi"];
//	nextScene = [CCTransitionMoveInL transitionWithDuration:1.0f scene:nextScene ];
//    [[CCDirector sharedDirector] replaceScene:nextScene ];

    //    [[SceneController sharedSceneController]loadLoadingScene];
    [SceneController loadLoadingScene:SS_SCENE_DIRECTION_BACKWARD];
}

@end
