//
//  GGMasonryExampleVC.m
//  GGMasonryDemo
//
//  Created by dujia on 30/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import "GGMasonryExampleVC.h"


@interface GGMasonryExampleVC()
@property (nonatomic , strong) Class viewClass;

@end

@implementation GGMasonryExampleVC
- (id) initWithTitle:(NSString *)title viewClass:(Class)viewClass
{
    if (self = [super init]) {
        self.viewClass = viewClass;
        self.title = title;
    }
    return self;
}
- (void)loadView
{
    self.view = self.viewClass.new;
}
@end
