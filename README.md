# Download-Font-iOS

[![CI Status](http://img.shields.io/travis/hisa0507/Download-Font-iOS.svg?style=flat)](https://travis-ci.org/hisa0507/Download-Font-iOS)
[![Version](https://img.shields.io/cocoapods/v/Download-Font-iOS.svg?style=flat)](http://cocoadocs.org/docsets/Download-Font-iOS)
[![License](https://img.shields.io/cocoapods/l/Download-Font-iOS.svg?style=flat)](http://cocoadocs.org/docsets/Download-Font-iOS)
[![Platform](https://img.shields.io/cocoapods/p/Download-Font-iOS.svg?style=flat)](http://cocoadocs.org/docsets/Download-Font-iOS)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

1. Now Available "Download-Font-iOS' ~> '1.0.0'

2. Then "pod install"

3. *Appdelegate.m*
    [DBLDownloadFont setFontNameWithBlock:^(bool successful, NSString *error) {
        if (successful) {
            //successful status
            UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main_iPhone" bundle:[NSBundle mainBundle]];
            self.window.rootViewController = [storyboard instantiateInitialViewController];
        }
        if (error) {
            //error status
            
        }
    } fontName:@"HiraMaruProN-W4"];

4. *ViewController.m*
    self.label.font = [UIFont fontWithName:@"HiraMaruProN-W4" size:self.label.font.pointSize];




## Getting Label More Richly in Your App!

![Alt text](/Download-Font-iOS/Preferences/Images/before.png "Before")
![Alt text](/Download-Font-iOS/Preferences/Images/after.png "After")



## Downloadable Font
* Apple SD Gothic Neo Heavy
* Apple SD Gothic Neo Light
* Apple SD Gothic Neo Regular
* Apple SD Gothic Neo SemiBold
* Apple SD Gothic Neo Thin
* Apple SD Gothic Neo UltraLight
* Apple SD GothicNeo ExtraBold
* AppleGothic Regular
* AppleMyungjo Regular
* Baoli SC Regular
* BiauKai
* HeadLineA Regular
* Hiragino Kaku Gothic StdN W8
* Hiragino Maru Gothic ProN W4
* Hiragino Sans GB W3
* Hiragino Sans GB W6
* Kaiti SC Black
* Kaiti SC Bold
* Kaiti SC Regular
* Lantinghei SC Demibold
* Lantinghei SC Extralight
* Lantinghei SC Heavy
* Lantinghei TC Demibold
* Lantinghei TC Extralight
* Lantinghei TC Heavy
* LiHei Pro
* LiSong Pro
* Libian SC Regular
* Nanum Brush Script
* Nanum Pen Script
* NanumGothic
* NanumGothic Bold
* NanumGothic ExtraBold
* NanumMyeongjo
* NanumMyeongjo Bold
* NanumMyeongjo ExtraBold
* PCMyungjo Regular
* PilGi Regular
* STFangsong
* Songti SC Black
* Songti SC Bold
* Songti SC Light
* Songti SC Regular
* Wawati SC Regular
* Wawati TC Regular
* Weibei SC Bold
* Weibei TC Bold
* Xingkai SC Bold
* Xingkai SC Light
* YuGothic Bold
* YuGothic Medium
* YuMincho Demibold
* YuMincho Medium
* Yuanti SC Bold
* Yuanti SC Light
* Yuanti SC Regular
* Yuppy SC Regular
* Yuppy TC Regular

You can see details <http://support.apple.com/kb/HT5484>




## Requirements

over iOS 6.0

## Installation

Download-Font-iOS is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "Download-Font-iOS"

## Author

hisa0507, hungry0507@hotmail.com

## License

Download-Font-iOS is available under the MIT license. See the LICENSE file for more info.

