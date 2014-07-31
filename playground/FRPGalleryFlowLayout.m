//
//  FRPGalleryFlowLayout.m
//  playground
//
//  Created by Leah Steinberg on 7/31/14.
//  Copyright (c) 2014 LeahSteinberg. All rights reserved.
//

#import "FRPGalleryFlowLayout.h"

@implementation FRPGalleryFlowLayout

- (instancetype)init
{
    if(!(self = [super init])) return nil;
    self.itemSize = CGSizeMake(145, 145);
    self.minimumInteritemSpacing = 10;
    self.minimumLineSpacing = 10;
    self.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
    return self;
}

@end
