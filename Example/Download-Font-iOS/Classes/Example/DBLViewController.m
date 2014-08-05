//
//  DBLViewController.m
//  Download-Font-iOS
//
//  Created by hisa0507 on 07/30/2014.
//  Copyright (c) 2014 hisa0507. All rights reserved.
//

#import "DBLViewController.h"

@interface DBLViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation DBLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label.font = [UIFont fontWithName:@"HiraMaruProN-W4" size:self.label.font.pointSize];
    
    CGFloat customLineHeight = 42.0f;
    // パラグラフスタイルにlineHeightをセット
    NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
    paragrahStyle.minimumLineHeight = customLineHeight;
    paragrahStyle.maximumLineHeight = customLineHeight;
    
    // NSAttributedStringを生成してパラグラフスタイルをセット
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:self.label.text];
    [attributedText addAttribute:NSParagraphStyleAttributeName
                           value:paragrahStyle
                           range:NSMakeRange(0, attributedText.length)];
    self.label.attributedText = attributedText;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
