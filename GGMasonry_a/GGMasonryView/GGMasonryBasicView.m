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
        
        UIView *redView1 = UIView.new;
        redView1.backgroundColor = UIColor.redColor;
        redView1.layer.borderColor = UIColor.blackColor.CGColor;
        redView1.layer.borderWidth = 2;
        [self addSubview:redView1];
        
        UIView *redView2 = UIView.new;
        redView2.backgroundColor = UIColor.redColor;
        redView2.layer.borderColor = UIColor.blackColor.CGColor;
        redView2.layer.borderWidth = 2;
        [self addSubview:redView2];
        
        UIView *redView3 = UIView.new;
        redView3.backgroundColor = UIColor.redColor;
        redView3.layer.borderColor = UIColor.blackColor.CGColor;
        redView3.layer.borderWidth = 2;
        [self addSubview:redView3];
        
        
        UIView *blueView = UIView.new;
        blueView.backgroundColor = UIColor.blueColor;
        blueView.layer.borderColor = UIColor.blackColor.CGColor;
        blueView.layer.borderWidth = 2;
        [self addSubview:blueView];
        
        UIView *blueView1 = UIView.new;
        blueView1.backgroundColor = [UIColor grayColor];
        blueView1.layer.borderColor = UIColor.blackColor.CGColor;
        blueView1.layer.borderWidth = 2;
        [self addSubview:blueView1];
        
        UIView *blueView2 = UIView.new;
        blueView2.backgroundColor = [UIColor purpleColor];
        blueView2.layer.borderColor = UIColor.blackColor.CGColor;
        blueView2.layer.borderWidth = 2;
        [self addSubview:blueView2];
        
        UIView *blueView3 = UIView.new;
        blueView3.backgroundColor = [UIColor redColor];
        blueView3.layer.borderColor = UIColor.blackColor.CGColor;
        blueView3.layer.borderWidth = 2;
        [self addSubview:blueView3];
        
        
        NSArray <UIView *>*array0 = @[greenView,redView,redView1,redView2,redView3];
        NSArray <UIView *>*array = @[blueView,blueView1,blueView2,blueView3];
        
        NSArray  <NSArray <UIView *> *>*array_base = @[array0 , array];
        
        UIView *superview = self;
        int padding = 10;
        
        [array0 enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(superview.top).offset(padding);
                make.bottom.equalTo([array objectAtIndex:0].top).offset(-padding);
                if (idx == 0 && array0.count > 1) {
                    make.left.equalTo(superview.left).offset(padding);
                    make.right.equalTo([array0 objectAtIndex:idx + 1].left).offset(-padding);
                }else if (idx > 1 && idx < array0.count - 1)
                {
                    make.left.equalTo([array0 objectAtIndex:idx - 1].right).offset(padding);
                    make.right.equalTo([array0 objectAtIndex:idx + 1].left).offset(-padding);
                }else if(idx == array0.count - 1)
                {
                    make.left.equalTo([array0 objectAtIndex:idx - 1].right).offset(padding);
                    make.right.equalTo(superview.right).offset(-padding);
                }
                make.width.equalTo(array0);
                make.height.equalTo(array0);
                
                
            }];
        }];

        
        __block CGFloat line2padding = ([UIScreen mainScreen].bounds.size.width - padding) / array0.count / 2;
        [array enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo([array0 objectAtIndex:0].mas_bottom).offset(padding);
                make.bottom.equalTo(superview.mas_bottom).offset(-padding);
                if (idx == 0 && array.count > 1) {
                    make.left.equalTo(superview.mas_left).offset(padding + line2padding);
                    make.right.equalTo([array objectAtIndex:idx+1].mas_left).offset(-padding);
                }else if (idx > 0 && idx < array.count - 1)
                {
                    make.left.equalTo([array objectAtIndex:idx - 1].mas_right).offset(padding);
                    make.right.equalTo([array objectAtIndex:idx+1].mas_left).offset(-padding);
                }else if (idx == array.count - 1)
                {
                    make.left.equalTo([array objectAtIndex:idx - 1].mas_right).offset(padding);
                    make.right.equalTo(superview.mas_right).offset(-padding - line2padding);
                }
                
                
                make.width.equalTo(array);
                make.height.equalTo(array0); //can pass array of attributes
            }];
        }];
    }
    return self;
}
@end
