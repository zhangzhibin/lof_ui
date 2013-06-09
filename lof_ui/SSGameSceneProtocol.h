//
//  SSGameSceneProtocol.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/8/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "headers.h"

@protocol SSGameSceneControlable <NSObject>

@required

// return current scene
+ (CCScene*)scene;
//// load scene in time of interval
//- (void)loadAnotherScene: (CCScene*)sceneToLoad inTime:(ccTime)dtDelay;
//// actually do the loading of scene
//- (void)doLoadAnotherScene;

- (void)loadNextSceneLater: (ccTime)inTime;
- (void)loadNextSceneNow:(ccTime)dtTime;


@optional
//- (void)doItLater: (SEL)selector inTime: (ccTime)dtDelay;
//- (void)doItNow: (ccTime)dtTime;

//// deal with this scene
//- (void)loadSceneAfterTime:(ccTime)dtDelay; // call scheduler
//- (void)loadSceneNoDelay;
//- (void)doLoadScene: (ccTime)dtTime; // selector
//
//// deal with next scene
//- (void)loadNextSceneAfterTime: (ccTime)dtDelay;
//- (void)loadNextSceneNoDelay;
//- (void)doLoadNextScene: (ccTime)dtTime;
//
//- (void)loadScenceFromCCBiFile: (NSString*) ccbiFile;
@end
