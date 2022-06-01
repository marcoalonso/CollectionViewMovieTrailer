//
//  ViewController.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    var peliculaVer: Movie?

    @IBOutlet weak var collectionViewMovie: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewMovie.delegate = self
        collectionViewMovie.dataSource = self
        
       
        
    }


}

extension MoviesViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionViewMovie.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        celda.configurar(peli: movies[indexPath.row])
        celda.movieImage.layer.cornerRadius = 10
        return celda
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return movies.count
    }
}

extension MoviesViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 115, height: 170)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        peliculaVer = movies[indexPath.row]
        performSegue(withIdentifier: "verDetalle", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vistaDetallada = segue.destination as! VistaDetalladaViewController
        vistaDetallada.peliculaMostrar = peliculaVer
    }
}
