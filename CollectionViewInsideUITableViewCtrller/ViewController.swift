//
//  ViewController.swift
//  CollectionViewInsideUITableViewCtrller
//
//  Created by Amir Daliri on 4/8/1397 AP.
//  Copyright © 1397 AmirDaliri. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    @IBOutlet weak var thirdCollectionView: UICollectionView!
    @IBOutlet weak var forthCollectionView: UICollectionView!
    @IBOutlet weak var fifthCollectionView: UICollectionView!
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Here...
        tableView.tableFooterView = UIView()
        setupCollectionViewLayout()
    }

    // MARK: - Generate Random Color

    func getRandomColor() -> UIColor{
        //Generate between 0 to 1
        let red:CGFloat = CGFloat(drand48())
        let green:CGFloat = CGFloat(drand48())
        let blue:CGFloat = CGFloat(drand48())
        return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    // MARK: - Layout Setup

    func setupCollectionViewLayout() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = UIScreen.main.bounds.width
        layout.sectionInset = UIEdgeInsets(top: 2, left: 1, bottom: 2, right: 1)
        layout.itemSize = CGSize(width: 123, height: width / 3)
        layout.minimumInteritemSpacing = 1
        layout.minimumLineSpacing = 2
        fifthCollectionView!.collectionViewLayout = layout
    }
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case firstCollectionView: return 10
        case secondCollectionView: return 20
        case thirdCollectionView: return 30
        case forthCollectionView: return 40
        case fifthCollectionView: return 50
        default: return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case firstCollectionView:
            let cell: FirstCollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "First Cell", for: indexPath as IndexPath) as? FirstCollectionViewCell)!
            cell.backgroundColor = getRandomColor()
            return cell
        case secondCollectionView:
            let cell: SecondCollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "Second Cell", for: indexPath as IndexPath) as? SecondCollectionViewCell)!
            cell.backgroundColor = getRandomColor()
            return cell
        case thirdCollectionView:
            let cell: ThirdCollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "Third Cell", for: indexPath as IndexPath) as? ThirdCollectionViewCell)!
            cell.backgroundColor = getRandomColor()
            return cell
        case forthCollectionView:
            let cell: ForthCollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "Forth Cell", for: indexPath as IndexPath) as? ForthCollectionViewCell)!
            cell.backgroundColor = getRandomColor()
            return cell
        case fifthCollectionView:
            let cell: FifthCollectionViewCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "Fifth Cell", for: indexPath as IndexPath) as? FifthCollectionViewCell)!
            cell.backgroundColor = getRandomColor()
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    
}
