//
//  ViewController.m
//  QuickWeather
//
//  Created by Michael Lee on 1/10/16.
//  Copyright © 2016 MichaelLee. All rights reserved.
//

#import "GetWeatherViewController.h"
#import "WeatherEngine.h"

@interface GetWeatherViewController ()


@end

@implementation GetWeatherViewController




- (void)viewDidLoad {
    [super viewDidLoad];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonPressed:(id)sender {
    
    
    [[WeatherEngine setWeatherEngine] getWeather:self.cityNameTextField.text withBlock:^(NSDictionary *dict, NSError *error) {
        self.weatherDictionary = dict;
        
        NSLog(@"%@",self.weatherDictionary);
        
    }];
    
}



@end
