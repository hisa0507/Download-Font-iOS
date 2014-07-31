//
//  DBLDownloadFont.m
//  Download-Font-iOS
//
//  Created by hangai on 2014/07/30.
//  Copyright (c) 2014年 hisa0507. All rights reserved.
//

#import "DBLDownloadFont.h"

@implementation DBLDownloadFont

+ (void)setFontNameWithBlock:(void (^)(bool successful, NSString *error))block fontName:(NSString*)fontName
{

    __block NSString* errorMessage;
	UIFont* aFont = [UIFont fontWithName:fontName size:12.];
    // If the font is already downloaded
	if (aFont && ([aFont.fontName compare:fontName] == NSOrderedSame || [aFont.familyName compare:fontName] == NSOrderedSame)) {
        // Go ahead and display the sample text.
		if(block) block(YES, nil);
        return;
	}
	
    // Create a dictionary with the font's PostScript name.
	NSMutableDictionary *attrs = [NSMutableDictionary dictionaryWithObjectsAndKeys:fontName, kCTFontNameAttribute, nil];
    
    // Create a new font descriptor reference from the attributes dictionary.
	CTFontDescriptorRef desc = CTFontDescriptorCreateWithAttributes((__bridge CFDictionaryRef)attrs);
    
    NSMutableArray *descs = [NSMutableArray arrayWithCapacity:0];
    [descs addObject:(__bridge id)desc];
    CFRelease(desc);
    
	__block BOOL errorDuringDownload = NO;
	
	// Start processing the font descriptor..
    // This function returns immediately, but can potentially take long time to process.
    // The progress is notified via the callback block of CTFontDescriptorProgressHandler type.
    // See CTFontDescriptor.h for the list of progress states and keys for progressParameter dictionary.
    CTFontDescriptorMatchFontDescriptorsWithProgressHandler( (__bridge CFArrayRef)descs, NULL,  ^(CTFontDescriptorMatchingState state, CFDictionaryRef progressParameter) {
    
		//NSLog( @"state %d - %@", state, progressParameter);
		
//		double progressValue = [[(__bridge NSDictionary *)progressParameter objectForKey:(id)kCTFontDescriptorMatchingPercentage] doubleValue];
		
		if (state == kCTFontDescriptorMatchingDidBegin) {
//			dispatch_async( dispatch_get_main_queue(), ^ {
//                // Show an activity indicator
//				
////				NSLog(@"Begin Matching");
//			});
		} else if (state == kCTFontDescriptorMatchingDidFinish) {
			dispatch_async( dispatch_get_main_queue(), ^ {
                // Remove the activity indicator
				
                // Log the font URL in the console
				CTFontRef fontRef = CTFontCreateWithName((__bridge CFStringRef)fontName, 0., NULL);
                CFStringRef fontURL = CTFontCopyAttribute(fontRef, kCTFontURLAttribute);
//				NSLog(@"%@", (__bridge NSURL*)(fontURL));
                CFRelease(fontURL);
				CFRelease(fontRef);
                
				if (!errorDuringDownload) {
//					NSLog(@"%@ downloaded", fontName);
				}
                else{
                    if (block) block(NO, errorMessage);
                }
                
                UIFont *font = [UIFont fontWithName:fontName size:1.0f];
                if (font) {
                    if (block) block(YES, nil);
                }
			});
		} else if (state == kCTFontDescriptorMatchingWillBeginDownloading) {
			dispatch_async( dispatch_get_main_queue(), ^ {
                // Show a progress bar
			});
		} else if (state == kCTFontDescriptorMatchingDidFinishDownloading) {
			dispatch_async( dispatch_get_main_queue(), ^ {
                // Remove the progress bar
			});
		} else if (state == kCTFontDescriptorMatchingDownloading) {
			dispatch_async( dispatch_get_main_queue(), ^ {
                // Use the progress bar to indicate the progress of the downloading
			});
		} else if (state == kCTFontDescriptorMatchingDidFailWithError) {
            // An error has occurred.
            // Get the error message
            NSError *error = [(__bridge NSDictionary *)progressParameter objectForKey:(id)kCTFontDescriptorMatchingError];
            if (error != nil) {
                errorMessage = [error description];
            } else {
                errorMessage = @"ERROR MESSAGE IS NOT AVAILABLE!";
            }
            // Set our flag
            errorDuringDownload = YES;
//            return block(NO, errorMessage);
		}
        
		return (bool)YES;
	});
}

@end
