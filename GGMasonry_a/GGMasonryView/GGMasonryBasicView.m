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
        
        UIView *yellow = UIView.new;
        yellow.backgroundColor = [UIColor yellowColor];
        yellow.layer.borderColor = UIColor.blackColor.CGColor;
        yellow.layer.borderWidth = 2;
        [self addSubview:yellow];
        
        UIView *yellow1 = UIView.new;
        yellow1.backgroundColor = [UIColor yellowColor];
        yellow1.layer.borderColor = UIColor.blackColor.CGColor;
        yellow1.layer.borderWidth = 2;
        [self addSubview:yellow1];
        
        UIView *yellow3 = UIView.new;
        yellow3.backgroundColor = [UIColor yellowColor];
        yellow3.layer.borderColor = UIColor.blackColor.CGColor;
        yellow3.layer.borderWidth = 2;
        [self addSubview:yellow3];
        
        UIView *yellow4 = UIView.new;
        yellow4.backgroundColor = [UIColor yellowColor];
        yellow4.layer.borderColor = UIColor.blackColor.CGColor;
        yellow4.layer.borderWidth = 2;
        [self addSubview:yellow4];
        
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
        
        
        UIView *blueViewShift = UIView.new;
        blueViewShift.backgroundColor = [UIColor redColor];
        blueViewShift.layer.borderColor = UIColor.blackColor.CGColor;
        blueViewShift.layer.borderWidth = 2;
        [self addSubview:blueViewShift];
        
        UIView *blueViewdelete = UIView.new;
        blueViewdelete.backgroundColor = [UIColor redColor];
        blueViewdelete.layer.borderColor = UIColor.blackColor.CGColor;
        blueViewdelete.layer.borderWidth = 2;
        [self addSubview:blueViewdelete];
        
        
        NSArray <UIView *>*array0 = @[greenView,redView,redView1,redView2,redView3];
        
        NSArray <UIView *>*array = @[blueView,blueView1,blueView2,blueView3];
        NSArray <UIView *>*array1 = @[yellow,yellow1];
        NSArray <UIView *>*array2 = @[yellow3,yellow4];
        
        NSArray  <NSArray <UIView *> *>*array_base = @[array0 , array,array1,array2];
        NSArray <UIView *> *array_shiftDelete = @[blueViewShift,blueViewdelete];
        
        
        UIView *superview = self;
        int padding = 10;
        
        __block shiftWidth = 80;
        
        NSInteger max_count = [self arrayMaxCount:array_base];
        
        
        __block CGFloat line2padding = ([UIScreen mainScreen].bounds.size.width - padding) / max_count;
        
        
        NSLog(@"max_count%ld",(long)max_count);
        
        [array_base enumerateObjectsUsingBlock:^(NSArray<UIView *> * _Nonnull obj_baseItem, NSUInteger idx_base, BOOL * _Nonnull stop) {
            if (idx_base == 0 && array_base.count > 1) {
                [obj_baseItem enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    [obj makeConstraints:^(MASConstraintMaker *make) {
                        make.top.equalTo(superview.top).offset(padding);
                        make.bottom.equalTo([array objectAtIndex:0].top).offset(-padding);
                        if (idx == 0 && obj_baseItem.count > 1) {
                            make.left.equalTo(superview.left).offset(padding);
                            make.right.equalTo([obj_baseItem objectAtIndex:idx + 1].left).offset(-padding);
                        }else if (idx > 1 && idx < obj_baseItem.count - 1)
                        {
                            make.left.equalTo([obj_baseItem objectAtIndex:idx - 1].right).offset(padding);
                            make.right.equalTo([obj_baseItem objectAtIndex:idx + 1].left).offset(-padding);
                            
                            
                        }else if(idx == obj_baseItem.count - 1)
                        {
                            make.left.equalTo([obj_baseItem objectAtIndex:idx - 1].right).offset(padding);
                            make.right.equalTo(superview.right).offset(-padding);
                        }
                        make.width.equalTo(obj_baseItem);
                        
                        
                        make.height.equalTo([array_base objectAtIndex:idx_base + 1]);
                        
                        
                    }];
                }];
            }else if (idx_base > 0 && idx_base < array_base.count - 1)
            {
                CGFloat item_padding = line2padding * (max_count - obj_baseItem.count) / 2;
                [obj_baseItem enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                        make.top.equalTo([array_base objectAtIndex:idx_base - 1][0].mas_bottom).offset(padding);
                        make.bottom.equalTo([array_base objectAtIndex:idx_base + 1][0].top).offset(-padding);
                        if (idx == 0 && obj_baseItem.count > 1) {
                            make.left.equalTo(superview.mas_left).offset(padding + item_padding);
                            make.right.equalTo([obj_baseItem objectAtIndex:idx+1].mas_left).offset(-padding);
                        }else if (idx > 0 && idx < obj_baseItem.count - 1)
                        {
                            make.left.equalTo([obj_baseItem objectAtIndex:idx - 1].mas_right).offset(padding);
                            make.right.equalTo([obj_baseItem objectAtIndex:idx+1].mas_left).offset(-padding);
                        }else if (idx == obj_baseItem.count - 1)
                        {
                            make.left.equalTo([obj_baseItem objectAtIndex:idx - 1].mas_right).offset(padding);
                            make.right.equalTo(superview.mas_right).offset(-padding - item_padding);
                        }
                        
                        
                        make.width.equalTo(obj_baseItem);
                        make.height.equalTo([array_base objectAtIndex:idx_base - 1]); //can pass array of attributes
                    }];
                }];
                
                if (idx_base == array_base.count - 2) {
                    [array_shiftDelete enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                        [obj makeConstraints:^(MASConstraintMaker *make) {
                            make.top.equalTo([array_base objectAtIndex:idx_base - 1][0].mas_bottom).offset(padding);
                            make.bottom.equalTo([array_base objectAtIndex:idx_base + 1][0].top).offset(-padding);
                            if (idx == 0) {
                                make.left.equalTo(superview.mas_left).offset(padding);

                            }else{

                                make.right.equalTo(superview.right).offset(-padding);
                            }
                            make.width.equalTo(obj_baseItem);
                            make.height.equalTo([array_base objectAtIndex:idx_base - 1]); //can pass array of attributes
                            
                        }];
                    }];
                }
                
            }
            else if (idx_base == array_base.count - 1 && array_base.count > 1)
            {
                CGFloat item_padding = line2padding * (max_count - obj_baseItem.count) / 2;
                [obj_baseItem enumerateObjectsUsingBlock:^(UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    [obj mas_makeConstraints:^(MASConstraintMaker *make) {
                        make.top.equalTo([array_base objectAtIndex:idx_base - 1][0].mas_bottom).offset(padding);
                        make.bottom.equalTo(superview.mas_bottom).offset(-padding);
                        if (idx == 0 && obj_baseItem.count > 1) {
                            make.left.equalTo(superview.mas_left).offset(padding + item_padding);
                            make.right.equalTo([obj_baseItem objectAtIndex:idx+1].mas_left).offset(-padding);
                        }else if (idx > 0 && idx < obj_baseItem.count - 1)
                        {
                            make.left.equalTo([obj_baseItem objectAtIndex:idx - 1].mas_right).offset(padding);
                            make.right.equalTo([obj_baseItem objectAtIndex:idx+1].mas_left).offset(-padding);
                        }else if (idx == obj_baseItem.count - 1)
                        {
                            make.left.equalTo([obj_baseItem objectAtIndex:idx - 1].mas_right).offset(padding);
                            make.right.equalTo(superview.mas_right).offset(-padding - item_padding);
                        }
                        
                        
                        make.width.equalTo(obj_baseItem);
                        make.height.equalTo([array_base objectAtIndex:idx_base - 1]); //can pass array of attributes
                    }];
                }];
            }
        }];


        
        
    }
    return self;
}


- (NSInteger)arrayMaxCount:(NSArray<NSArray *> *)array
{
    __block NSInteger max = 0;
    [array enumerateObjectsUsingBlock:^(NSArray *  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (max < obj.count) {
            max = obj.count;
        }
    }];
    return max;
}
@end
