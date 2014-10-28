//
//  ViewController.m
//  WeatherFontIcon
//
//  Created by Shaffiulla Khan on 10/28/14.
//  Copyright (c) 2014 Shaffiulla Khan. All rights reserved.
//

#import "ViewController.h"
#import "FontHeader.h"

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate>
{
}
@end

@implementation ViewController
@synthesize stageIcon;

- (void)viewDidLoad {
    [super viewDidLoad];
    [stageIcon setFont:[UIFont fontWithName:KFontName size:90]];
    [stageIcon setText:kWind];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sizeChanged:(id)sender {
    CGFloat size = [(UISlider *)sender value];
    NSLog(@"CHANGE SIZE %f ", size);
    [stageIcon setFont:[UIFont fontWithName:KFontName size:size]];
}

- (IBAction)colorChanged:(id)sender {
    CGFloat value = [(UISlider *)sender value];
    NSLog(@"CHANGE SIZE %@ ", stageIcon.textColor);
    if (value==0.0) {
        stageIcon.textColor = [UIColor blackColor];
    }
    else {
        stageIcon.textColor = [UIColor colorWithHue: value saturation: 0.8 brightness: 0.9 alpha: 1.0];
    }
}

#pragma mark - Picker Delegate

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [FontList allKeys].count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [[FontList allKeys][row] capitalizedString];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *key = [FontList allKeys][row];
    [stageIcon setText:FontList[key]];
}
@end
