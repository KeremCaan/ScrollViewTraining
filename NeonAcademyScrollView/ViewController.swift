//
//  ViewController.swift
//  NeonAcademyScrollView
//
//  Created by Kerem Caan on 2.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let scrollView: UIScrollView = UIScrollView()
    let label1: UILabel = UILabel()
    let label2: UILabel = UILabel()
    let label3: UILabel = UILabel()
    let label4: UILabel = UILabel()
    let label5: UILabel = UILabel()
    let label6: UILabel = UILabel()
    let label7: UILabel = UILabel()
    let label8: UILabel = UILabel()
    let view1: UIView = UIView()
    var isScrolled = true

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        configureUI()
    }

    func configureUI() {
        
        scrollView.addSubview(view1)
        view1.backgroundColor = .blue
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(2)
            make.top.equalTo(scrollView.snp.top)
            make.leading.equalTo(scrollView.snp.leading)
            make.trailing.equalTo(scrollView.snp.trailing)
            make.bottom.equalTo(scrollView.snp.bottom)
            make.width.equalTo(scrollView.snp.width)
        }
        
        view.addSubview(scrollView)
        scrollView.backgroundColor = .gray
        scrollView.isScrollEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        view1.addSubview(label1)
        label1.text = "label1"
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(150)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label2)
        label2.text = "label2"
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(350)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label3)
        label3.text = "label3"
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(550)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label4)
        label4.text = "label4"
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(750)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label5)
        label5.text = "label5"
        label5.isHidden = true
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(1050)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label6)
        label6.text = "label6"
        label6.isHidden = true
        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(1250)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label7)
        label7.text = "label7"
        label7.isHidden = true
        label7.translatesAutoresizingMaskIntoConstraints = false
        label7.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(1450)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
        view1.addSubview(label8)
        label8.text = "label8"
        label8.isHidden = true
        label8.translatesAutoresizingMaskIntoConstraints = false
        label8.snp.makeConstraints { make in
            make.top.equalTo(view1.snp.top).offset(1650)
            make.centerX.equalTo(view1.snp.centerX)
        }
        
    }
    


}

extension ViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if isScrolled {
            isScrolled = false
            return
        }
        
        if scrollView.contentOffset.y + scrollView.bounds.height >= scrollView.contentSize.height {
            let alert = UIAlertController(title: "Warning.", message: "You have reached the end of the scroll view.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            scrollView.contentOffset.y = 0
            self.present(alert, animated: true, completion: nil)
        }
        
        label5.isHidden = false
        label6.isHidden = false
        label7.isHidden = false
        label8.isHidden = false
    }

    
}

