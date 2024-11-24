//
//  ViewController.swift
//  SparrowMarathon-UIKIt-NativeAvatar
//
//  Created by Sergey Leontiev on 23.11.24..
//

import UIKit

class ViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.image =  UIImage(systemName: "person.crop.circle.fill")?.withRenderingMode(.alwaysTemplate)
        imageView.tintColor = .systemGray3
        return imageView
    }()
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height + 300)
        scrollView.backgroundColor = .white
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Avatar"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        navigationController?.navigationBar.subviews[1].addSubview(imageView)
        
        view.addSubview(scrollView)
       
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 36),
            imageView.heightAnchor.constraint(equalToConstant: 36),
            imageView.trailingAnchor.constraint(equalTo: (navigationController?.navigationBar.trailingAnchor)!, constant: -10),
            imageView.bottomAnchor.constraint(equalTo: (navigationController?.navigationBar.bottomAnchor)!, constant: -8)
        ])
    }
}
