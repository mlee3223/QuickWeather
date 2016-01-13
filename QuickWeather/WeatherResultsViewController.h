//
//  WeatherResultsViewController.h
//  QuickWeather
//
//  Created by Michael Lee on 1/10/16.
//  Copyright © 2016 MichaelLee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherResultsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *degreeLabel;

@end
