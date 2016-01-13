//
//  WeatherEngine.h
//  QuickWeather
//
//  Created by Michael Lee on 1/10/16.
//  Copyright © 2016 MichaelLee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeatherEngine : NSObject

@property (strong,nonatomic) NSDictionary *dict;

typedef void (^completionBlock)(NSDictionary *dict, NSError *error);

+(WeatherEngine *)setWeatherEngine;

-(void)getWeather:(NSString *)string withBlock:(completionBlock)block;

@end
