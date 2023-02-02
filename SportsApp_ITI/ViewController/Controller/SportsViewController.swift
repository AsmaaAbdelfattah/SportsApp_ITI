//
//  SportsViewController.swift
//  SportsApp_ITI
//
//  Created by Zeinab on 02/02/2023.
//

import UIKit

class SportsViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    

    @IBOutlet weak var Sportscollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Sportscollection.layer.cornerRadius = CGFloat(10)
        Sportscollection.delegate = self
        Sportscollection.dataSource = self
        
        let nib = UINib(nibName: "CustomCollectionViewCellForLegeus", bundle: nil)
        Sportscollection.register(nib, forCellWithReuseIdentifier: "cell")
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCellForLegeus
        
        cell.nameOfSport.text = "Football"
        cell.imgForSport.image = UIImage(named: "ball.jpeg")
        cell.layer.borderWidth = CGFloat(5)
        cell.layer.cornerRadius = CGFloat(20)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       
        return CGSize(width: (UIScreen.main.bounds.size.width/2) - 30, height: (UIScreen.main.bounds.size.height/5) - 15)
       
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let legeusViewControllerObj : LegeusViewController = self.storyboard?.instantiateViewController(withIdentifier: "legeus") as! LegeusViewController
        
        self.navigationController?.pushViewController(legeusViewControllerObj, animated: true)
    }
    

}
