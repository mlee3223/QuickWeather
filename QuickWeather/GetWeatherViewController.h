//
//  ViewController.h
//  QuickWeather
//
//  Created by Michael Lee on 1/10/16.
//  Copyright © 2016 MichaelLee. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WeatherEngine.h"


@interface GetWeatherViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *cityNameTextField;

@property (strong, nonatomic) IBOutlet UIView *zipCodeTextField;
@property (weak, nonatomic) IBOutlet UIButton *goButton;
@property (strong,nonatomic) NSDictionary *weatherDictionary;



@end

