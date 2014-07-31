//
//  DBLDownloadFont.h
//  Download-Font-iOS
//
//  Created by hangai on 2014/07/30.
//  Copyright (c) 2014年 hisa0507. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreText/CoreText.h>

@interface DBLDownloadFont : NSObject

+ (void)setFontNameWithBlock:(void (^)(bool successful, NSString *error))block fontName:(NSString*)fontName;

@end
