//
//  GGMasonryBasicView.m
//  GGMasonryDemo
//
//  Created by dujia on 30/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import "GGMasonryBasicView.h"

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS
#import <Masonry.h>

@implementation GGMasonryBasicView

- (id) init
{
    if (self = [super init]) {
        self.backgroundColor = [UIColor whiteColor];
        
        UIView *greenView = UIView.new;
        greenView.backgroundColor = UIColor.greenColor;
        greenView.layer.borderColor = UIColor.blackColor.CGColor;
        greenView.layer.borderWidth = 2;
        [self addSubview:greenView];
        
        UIView *redView = UIView.new;
        redView.backgroundColor = UIColor.redColor;
        redView.layer.borderColor = UIColor.blackColor.CGColor;
        redView.layer.borderWidth = 2;
        [self addSubview:redView];
        
        UIView *blueView = UIView.new;
        blueView.backgroundColor = UIColor.blueColor;
        blueView.layer.borderColor = UIColor.blackColor.CGColor;
        blueView.layer.borderWidth = 2;
        [self addSubview:blueView];
        
        
        
        UIView *superview = self;
        int padding = 10;
        
        [greenView makeConstraints:^(MASConstraintMaker *make) {
            make.top.greaterThanOrEqualTo(superview.top).offset(padding);
            make.left.equalTo(superview.left).offset(padding);
            make.bottom.equalTo(blueView.top).offset(-padding);
            make.right.equalTo(redView.left).offset(-padding);
            make.width.equalTo(redView.width);
            
            make.height.equalTo(redView.height);
            make.height.equalTo(blueView.height);
            
        }];
        
        [redView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(superview.mas_top).with.offset(padding);
            make.left.equalTo(greenView.mas_right).offset(padding);
            make.bottom.equalTo(blueView.mas_top).offset(-padding);
            make.right.equalTo(superview.mas_right).offset(-padding);
            make.width.equalTo(greenView.mas_width);
            
            make.height.equalTo()
        }];
        
    }
    return self;
}
@end
