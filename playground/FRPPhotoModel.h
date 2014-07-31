//
//  FRPPhotoModel.h
//  playground
//
//  Created by Leah Steinberg on 7/31/14.
//  Copyright (c) 2014 LeahSteinberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FRPPhotoModel : NSObject
@property(nonatomic,strong)NSString*photoName;
@property(nonatomic,strong)NSNumber*identifier;
@property(nonatomic,strong)NSString*photographerName;
@property(nonatomic,strong)NSNumber*rating;
@property(nonatomic,strong)NSString*thumbnailURL;
@property(nonatomic,strong)NSData*thumbnailData;
@property(nonatomic,strong)NSString*fullsizedURL;
@property(nonatomic,strong)NSData*fullsizedData;

@end
