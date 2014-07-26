//
//  ViewController.m
//  DatePickView
//
//  Created by wshaolin on 14-7-25.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "DatePickerView.h"

@interface ViewController () <DatePickerViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *dateField;

@end

@implementation ViewController

- (void)viewDidLoad{
    [super viewDidLoad];
}

- (IBAction)select {
    DatePickerView *datePickerView = [[DatePickerView alloc] init];
    datePickerView.delegate = self;
    [datePickerView show];
}

- (void)datePickerViewDidClickDone:(DatePickerView *)datePickerView{
    self.dateField.text = [datePickerView stringWithFormat:@"yyyy-MM-dd HH:mm:ss"];
}

@end
