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
        
        if (hexColor.startIndex.distanceTo(hexColor.endIndex) < 6 )
        {
            return nil
        }
        
        var redInt_: UInt32     = 0
        var greenInt_: UInt32   = 0
        var blueInt_: UInt32    = 0
        
        var startIndex  = hexColor.startIndex.advancedBy(0)
        var endIndex    = startIndex.advancedBy(2)
        
        var rangeNSRange_: Range = Range<String.Index>(start: startIndex, end: endIndex)
        NSScanner.localizedScannerWithString(hexColor.substringWithRange(rangeNSRange_)).scanHexInt(&redInt_)
        
        startIndex      = hexColor.startIndex.advancedBy(2)
        endIndex        = startIndex.advancedBy(2)
        
        rangeNSRange_   = Range<String.Index>(start: startIndex, end: endIndex)
        NSScanner.localizedScannerWithString(hexColor.substringWithRange(rangeNSRange_)).scanHexInt(&greenInt_)
        
        startIndex      = hexColor.startIndex.advancedBy(4)
        endIndex        = startIndex.advancedBy(2)
        
        rangeNSRange_   = Range<String.Index>(start: startIndex, end: endIndex)
        NSScanner.localizedScannerWithString(hexColor.substringWithRange(rangeNSRange_)).scanHexInt(&blueInt_)
        
        return UIColor(red: CGFloat(redInt_) / 255.0, green: CGFloat(greenInt_) / 255.0, blue: CGFloat(blueInt_) / 255.0, alpha: 1.0)

    }

}