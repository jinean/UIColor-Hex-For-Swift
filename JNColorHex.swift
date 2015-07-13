//
//  JNColorHex.swift
//  JNColorHex
//
//  Created by liyan on 15/7/13.
//  Copyright (c) 2015年 liyan. All rights reserved.
//

extension UIColor
{
    class func getColor(hexColor: String) -> UIColor? {
        
        if (distance(hexColor.startIndex,hexColor.endIndex) < 6 )
        {
            return nil
        }
        
        var redInt_: UInt32     = 0
        var greenInt_: UInt32   = 0
        var blueInt_: UInt32    = 0
        
        var startIndex  = advance(hexColor.startIndex, 0)
        var endIndex    = advance(startIndex, 2);
        
        var rangeNSRange_: Range = Range<String.Index>(start: startIndex, end: endIndex)
        NSScanner.localizedScannerWithString(hexColor.substringWithRange(rangeNSRange_)).scanHexInt(&redInt_)
        
        startIndex      = advance(hexColor.startIndex, 2)
        endIndex        = advance(startIndex, 2);
        
        rangeNSRange_   = Range<String.Index>(start: startIndex, end: endIndex)
        NSScanner.localizedScannerWithString(hexColor.substringWithRange(rangeNSRange_)).scanHexInt(&greenInt_)
        
        startIndex      = advance(hexColor.startIndex, 4)
        endIndex        = advance(startIndex, 2);
        
        rangeNSRange_   = Range<String.Index>(start: startIndex, end: endIndex)
        NSScanner.localizedScannerWithString(hexColor.substringWithRange(rangeNSRange_)).scanHexInt(&blueInt_)

        return UIColor(red: CGFloat(redInt_) / 255.0, green: CGFloat(greenInt_) / 255.0, blue: CGFloat(blueInt_) / 255.0, alpha: 1.0)

    }

}