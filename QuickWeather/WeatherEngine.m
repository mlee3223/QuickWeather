//
//  WeatherEngine.m
//  QuickWeather
//
//  Created by Michael Lee on 1/10/16.
//  Copyright © 2016 MichaelLee. All rights reserved.
//

#import "WeatherEngine.h"



@implementation WeatherEngine

+(WeatherEngine *)setWeatherEngine{
    
    WeatherEngine *engine = [[WeatherEngine alloc]init];
    
    return engine;
    
}

-(void)getWeather:(NSString *)string withBlock:(void (^)(NSDictionary *dict,NSError *error))block{
    
    NSString *url = @"http://api.openweathermap.org/data/2.5/weather?q=";
    //NSString *appID = @"&appid=#"; replaced my APPID with # for privacy
    
    NSString *fullString = [NSString stringWithFormat:@"%@%@%@",url,string,appID];
    
    NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
    NSURLSessionDataTask *task = [session dataTaskWithURL:[NSURL URLWithString:fullString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        
        block(dict,error);
        

        
        
    }];
    [task resume];
}

@end
