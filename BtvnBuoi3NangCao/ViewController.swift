//
//  ViewController.swift
//  BtvnBuoi3NangCao
//
//  Created by Phương Hùng on 03/11/2022.
//

import UIKit

class ViewController: UIViewController {

    let topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hexString: "#F0F7EC")
        return view
        
    }()
    
    let backView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.image = UIImage(systemName: "chevron.backward")
        imageView.contentMode = .center
        imageView.tintColor = UIColor.black
        
        return imageView
    }()
    
    let packView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.image = UIImage(systemName: "backpack")
        imageView.contentMode = .center
        imageView.tintColor = UIColor.black
        
        return imageView
    }()
    
    let imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "anh")
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        
        return imageView
        
    }()
    
    let label1: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Little Fires Everywhere"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "By John J.Gobbell"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let rateImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "stars")
        imageView.contentMode = .scaleAspectFit
        
        return imageView
        
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Description"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        return label
    }()
    
    let label4: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "$25.00"
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = UIColor(hexString: "#3B6458")
        return label
        
    }()
    
    let qtyView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(hexString: "#F0F7EC")
        return view
    }()
    
    let labelQty: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "QTY"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 17)
        return label
    }()
    
    let buttonPlus: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        button.tintColor = .gray
        return button
    }()
    
    let label5: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2"
        label.textColor = UIColor(hexString: "#3B6458")
        return label
        
    }()
    
    let buttonMinus: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        button.tintColor = .gray
        return button
    }()
    
    let buttonBuy: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Buy Now", for: .normal)
        button.tintColor = .white
        button.backgroundColor = UIColor(hexString: "#3B6458")
        return button
    }()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubView()
        setupLayout()
        // Do any additional setup after loading the view.
    }
    
    func addSubView() {
        view.addSubview(topView)
        topView.addSubview(backView)
        topView.addSubview(packView)
        topView.addSubview(imageView)
        topView.addSubview(label1)
        topView.addSubview(label2)
        topView.addSubview(rateImageView)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(qtyView)
        qtyView.addSubview(labelQty)
        qtyView.addSubview(buttonPlus)
        qtyView.addSubview(label5)
        qtyView.addSubview(buttonMinus)
        view.addSubview(buttonBuy)
    }
    
    func setupLayout() {
        
        topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 54).isActive = true
        topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        topView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 6/10).isActive = true
        topView.clipsToBounds = true
        topView.layer.cornerRadius = 20
        
        backView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        backView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 20).isActive = true
        backView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        backView.clipsToBounds = true
        backView.layer.cornerRadius = 20
        
        packView.topAnchor.constraint(equalTo: topView.topAnchor, constant: 20).isActive = true
        packView.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -20).isActive = true
        packView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        packView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        packView.clipsToBounds = true
        packView.layer.cornerRadius = 20
        
        imageView.topAnchor.constraint(equalTo: backView.bottomAnchor, constant: 20).isActive = true
        imageView.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: label1.topAnchor, constant: -25).isActive = true
        imageView.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 2/3).isActive = true
//        imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor, multiplier: 2/3).isActive = true
        
        
        label1.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 22).isActive = true
        label1.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        label2.topAnchor.constraint(equalTo: label1.bottomAnchor, constant: 18).isActive = true
        label2.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        rateImageView.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 18).isActive = true
        rateImageView.centerXAnchor.constraint(equalTo: topView.centerXAnchor).isActive = true
        rateImageView.heightAnchor.constraint(equalToConstant: 15).isActive = true
        rateImageView.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 1/3).isActive = true
        rateImageView.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -30).isActive = true
        
        label3.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 20).isActive = true
        label3.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        label3.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        label4.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        label4.centerYAnchor.constraint(equalTo: label3.centerYAnchor, constant: 0).isActive = true
        label4.heightAnchor.constraint(equalTo: label3.heightAnchor, multiplier: 1).isActive = true
        
        
        qtyView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.6/10).isActive = true
        qtyView.leadingAnchor.constraint(equalTo: topView.leadingAnchor, constant: 0).isActive = true
        qtyView.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 5.5/10).isActive = true
        qtyView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -34).isActive = true
        qtyView.clipsToBounds = true
        qtyView.layer.cornerRadius = 20
        
        labelQty.centerYAnchor.constraint(equalTo: qtyView.centerYAnchor).isActive = true
        labelQty.leadingAnchor.constraint(equalTo: qtyView.leadingAnchor, constant: 20).isActive = true
        labelQty.heightAnchor.constraint(equalTo: qtyView.heightAnchor, multiplier: 1/2).isActive = true
        
        
        buttonPlus.centerYAnchor.constraint(equalTo: qtyView.centerYAnchor).isActive = true
        buttonPlus.trailingAnchor.constraint(equalTo: qtyView.trailingAnchor, constant: -15).isActive = true
        buttonPlus.heightAnchor.constraint(equalTo: qtyView.heightAnchor, multiplier: 1/2).isActive = true
        buttonPlus.widthAnchor.constraint(equalTo: buttonPlus.heightAnchor, multiplier: 1).isActive = true
        
        label5.centerYAnchor.constraint(equalTo: qtyView.centerYAnchor).isActive = true
        label5.trailingAnchor.constraint(equalTo: buttonPlus.leadingAnchor, constant: -15).isActive = true
        label5.heightAnchor.constraint(equalTo: qtyView.heightAnchor, multiplier: 1/3).isActive = true
        
        buttonMinus.centerYAnchor.constraint(equalTo: qtyView.centerYAnchor).isActive = true
        buttonMinus.trailingAnchor.constraint(equalTo: label5.leadingAnchor, constant: -15).isActive = true
        buttonMinus.heightAnchor.constraint(equalTo: qtyView.heightAnchor, multiplier: 1/2).isActive = true
        buttonMinus.widthAnchor.constraint(equalTo: buttonMinus.heightAnchor, multiplier: 1).isActive = true
        
        
        buttonBuy.centerYAnchor.constraint(equalTo: qtyView.centerYAnchor).isActive = true
        buttonBuy.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: 0).isActive = true
        buttonBuy.heightAnchor.constraint(equalTo: qtyView.heightAnchor, multiplier: 1).isActive = true
        buttonBuy.widthAnchor.constraint(equalTo: topView.widthAnchor, multiplier: 4/10).isActive = true
        buttonBuy.clipsToBounds = true
        buttonBuy.layer.cornerRadius = 15
        
        
    }


}
extension UIColor {
    
    /// Color using hex color
    /// - Parameters:
    ///   - hexString: hex string
    ///   - alpha: alpha
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        var mHexTring = hexString
        var alphaSetup = alpha
        if mHexTring.replacingOccurrences(of: "#",
                                          with: "",
                                          options: NSString.CompareOptions.literal,
                                          range: nil).count != 6 {
            if let alphaInt = Int(mHexTring.prefix(2)), mHexTring.count == 8 {
                alphaSetup = Double(alphaInt)/Double(100)
                mHexTring = String(mHexTring.suffix(6))
            } else {
                mHexTring = "#3675FF"
            }
        }
        var hexFormatted: String = mHexTring.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alphaSetup)
    }
}
