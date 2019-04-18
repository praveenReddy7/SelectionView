//
//  CLSelectionVIew.swift
//  SelectionView
//
//  Created by praveen on 3/25/19.
//  Copyright © 2019 focussoftnet. All rights reserved.
//

import UIKit
struct KeyValue {
    let key: Int
    let value: Int
}
extension Array {
    
}
class CLSelectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
   
//    let totalArray = [KeyValue(key: 1, value: 1),
//                      KeyValue(key: 2, value: 2),
//                      KeyValue(key: 3, value: 3),
//                      KeyValue(key: 4, value: 4),
//                      KeyValue(key: 5, value: 5),
//                      KeyValue(key: 6, value: 6),]
//    let selectedArray = [KeyValue(key: 4, value: 4)]
    
    let array = ["gasdfha", "ashjsfjan", "hafdsjhsajsfajsaf", "gas", "shahsahcxznhj", "gasdfhjfsahasdhsnhjsaghasnash", "aghs", "ahsdafndba", "d", "asdhjasjnafs", "gasdfha", "ashjsfjan", "hafdsjhsajsfajsaf", "gas", "shahsahcxznhj", "gasdfhjfsahasdhsnhjsaghasnash", "aghs", "ahsdafndba", "d", "asdhjasjnafs", "gasdfha", "ashjsfjan", "hafdsjhsajsfajsaf", "gas", "shahsahcxznhj", "gasdfhjfsahasdhsnhjsaghasnash", "aghs", "ahsdafndba", "d", "asdhjasjnafs"]
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        layout.scrollDirection = .vertical
        layout.estimatedItemSize = CGSize(width: 1, height: 1)
        
        super.init(frame: .zero, collectionViewLayout: layout)
        
        register(CLRoundedRectCell.self, forCellWithReuseIdentifier: "cell")
        self.dataSource = self
        self.delegate = self
        
//        let key = totalArray[totalArray.map{$0.key}.index(of: 4)!]
//        print("keyyyyy: \(key)")
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CLRoundedRectCell
        cell.titleLabel.text = array[indexPath.row]
        return cell
    }
    
}


class CLRoundedRectCell: UICollectionViewCell {
    let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .yellow
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



