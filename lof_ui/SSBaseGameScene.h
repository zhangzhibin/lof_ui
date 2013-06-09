//
//  SSBaseGameScene.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/8/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "CCLayer.h"
#import "headers.h"

@interface SSBaseGameScene : CCLayer <SSGameSceneControlable>
{
//    NSString* sceneName;
//    NSString* ccbiFilePath;
}
//@property (readwrite,copy) NSString* sceneName;
//@property (readwrite,copy) NSString* ccbiFilePath;
//
////+ (NSString*)sceneName;
////- (NSString*)sceneName;

+(CCScene*)scene; // return current scene

- (void)loadNextSceneLater: (ccTime)inTime;
- (void)loadNextSceneNow:(ccTime)dtTime;
//- (void)doItLater: (SEL)selector inTime: (ccTime)dtDelay;
//- (void)doItNow: (ccTime)dtTime;
@end
