//
//  MainMenuLayer.h
//  lof_ui_demo1
//
//  Created by Zhang Zhibin on 6/5/13.
//  Copyright (c) 2013 snowstormstudio. All rights reserved.
//

#import "CCLayer.h"

@interface MainMenuLayer : CCLayer
{
//    CCLayer* containerScene;
//    CCSprite* menuBackground;
}
//+(MainMenuLayer*) sharedMenu;
// selectors for menu items
-(void) onMenuItemHome:(id)sender;
-(void) onMenuItemCampaign:(id)sender;
-(void) onMenuItemHall:(id)sender;
-(void) onMenuItemSkills:(id)sender;
-(void) onMenuItemItems:(id)sender;
-(void) onMenuItemSocial:(id)sender;
-(void) onMenuItemStore:(id)sender;
-(void) onMenuItemSettings:(id)sender;


@end
