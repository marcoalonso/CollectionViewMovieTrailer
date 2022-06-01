//
//  EstrenosViewController.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import UIKit

class EstrenosViewController: UIViewController {
    
    @IBOutlet weak var collectionEstrenos: UICollectionView!
    
    @IBOutlet weak var pageControlPeliculas: UIPageControl!
    
    
    // MARK: - Variables
    var peliculasImagenes = ["batman", "bus","doctor","down","elvis","jurasic","mascota", "top","screen","red2"]
    var timer: Timer?
    var indiceActual = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionEstrenos.dataSource = self
        collectionEstrenos.delegate = self
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(cambiar), userInfo: nil, repeats: true)
        
        pageControlPeliculas.numberOfPages = peliculasImagenes.count
        
    }
    
    @objc func cambiar() {
        if indiceActual < peliculasImagenes.count-1{
             indiceActual = indiceActual + 1
        } else {
            indiceActual = 0
        }
        
        pageControlPeliculas.currentPage = indiceActual
        collectionEstrenos.scrollToItem(at: IndexPath(item: indiceActual, section: 0), at: .right, animated: true)
    }


}

extension EstrenosViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return peliculasImagenes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "EstrenosCollectionViewCell", for: indexPath) as! EstrenosCollectionViewCell
        celda.peliculaEstrenoIV.image = UIImage(named: peliculasImagenes[indexPath.row])
        return celda
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}

