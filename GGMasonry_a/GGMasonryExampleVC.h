//
//  GGMasonryExampleVC.h
//  GGMasonryDemo
//
//  Created by dujia on 30/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GGMasonryExampleVC : UIViewController
@property (nonatomic , strong) NSString *title;
- (id) initWithTitle:(NSString *)title viewClass:(Class)viewClass;
@end
