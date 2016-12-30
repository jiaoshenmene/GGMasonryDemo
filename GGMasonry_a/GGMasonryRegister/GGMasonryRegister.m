//
//  GGMasonryRegister.m
//  GGMasonryDemo
//
//  Created by dujia on 30/12/2016.
//  Copyright © 2016 dujia. All rights reserved.
//

#import "GGMasonryRegister.h"
#import "GGMasonryVC.h"


@implementation GGMasonryRegister

+ (void) load
{
    [GGProtocolManager registServiceProvide:[[self alloc] init] forName:@"GGMasonry"];
}

- (void)urlFunction:(NSString *)url rootVC:(UIViewController *)vc
{
    GGMasonryVC *masonry_vc = [[GGMasonryVC alloc] init];
    [vc.navigationController pushViewController:masonry_vc animated:YES];
}

@end
