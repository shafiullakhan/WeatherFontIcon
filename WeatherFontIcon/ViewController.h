//
//  ViewController.h
//  WeatherFontIcon
//
//  Created by Shaffiulla Khan on 10/28/14.
//  Copyright (c) 2014 Shaffiulla Khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *stageView;
@property (weak, nonatomic) IBOutlet UILabel *stageIcon;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)sizeChanged:(id)sender;
- (IBAction)colorChanged:(id)sender;

@end

