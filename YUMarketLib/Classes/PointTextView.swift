//
// PointTextView.swift
// Created on 2020/2/25
// Description <#⽂文件描述#> 
// Copyright © 2020 Huami inc. All rights reserved.
// @author yuhaiping（yuhaiping@huami.com）
//
    

import Foundation
import UIKit

@available(iOS 9.0, *)
public class PointTextView: UIView {
    
   public lazy var pointView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 6
        $0.layer.borderWidth = 4
        $0.layer.backgroundColor = UIColor.clear.cgColor
        return $0
    }(UIView())
    
    public lazy var titleLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = UIFont.systemFont(ofSize: 12)
        $0.textColor = UIColor.black.withAlphaComponent(0.4)
        return $0
    }(UILabel())
    
   public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
        configConstraints()
    }
    
}

// MARK: - initialize
@available(iOS 9.0, *)
extension PointTextView {
    
    private func initialize() {
        self.backgroundColor = UIColor.white
        self.addSubview(titleLabel)
        self.addSubview(pointView)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            pointView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            pointView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            pointView.heightAnchor.constraint(equalToConstant: 12),
            pointView.widthAnchor.constraint(equalToConstant: 12)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: pointView.trailingAnchor, constant: 5),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}

