//
//  UIImage+Extension.swift
//  Soldier
//
//  Created by vinsent on 2019/3/1.
//


extension UIImage {
    func applying(saturation value: NSNumber, contrast contrastValue: CGFloat) -> UIImage {
        if let ciImg = CIImage(image: self)?.applyingFilter("CIColorControls", parameters: [kCIInputSaturationKey: value, kCIInputContrastKey: contrastValue]) {
            return UIImage(ciImage: ciImg)
        }
        return self
    }
    
    var grayScale: UIImage {
        return applying(saturation: 0, contrast: 1.3)
    }
}
