//
//  UIButton+Extension.swift
//  Soldier
//
//  Created by wangzhen on 2018/9/15.
//


public extension UIButton {
    
    convenience init(title: String = "", titleFont fontValue: CGFloat, titleColor: UIColor = .darkText, backgroundColor: UIColor = .white, backgroundImage: UIImage? = nil, corner radius: CGFloat = 0) {
        self.init()
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: fontValue)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        setBackgroundImage(backgroundImage, for: .normal)
        layer.cornerRadius = radius
        layer.masksToBounds = true
    }
    
    func setImage(normal normalImg: UIImage?, selected selectedImg: UIImage?) {
        setImage(normalImg, for: .normal)
        setImage(selectedImg, for: .selected)
    }
    
}
