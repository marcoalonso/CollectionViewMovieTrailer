//
//  ViewController.swift
//  CollectionMovie
// Animation: https://medium.com/@fabiogiolito/grid-animation-effects-in-swift-4d6ea4d6360d 
//  Created by marco rodriguez on 01/06/22.
//

import UIKit

class MoviesViewController: UIViewController {
    
    var peliculaVer: Movie?
    let animationDuration: Double = 0.3
    let delayBase: Double = 0.3
    
    var timer: Timer?
    var indiceActual = 0

    @IBOutlet weak var searchbarPeliculas: UISearchBar!
    @IBOutlet weak var collectionViewMovie: UICollectionView!
    
    var peliculasFiltradas: [Movie]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculasFiltradas = movies
        
        searchbarPeliculas.delegate = self
        
        collectionViewMovie.delegate = self
        collectionViewMovie.dataSource = self
        
        //Scroll automatico
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(cambiar), userInfo: nil, repeats: true)
    }
    
    //Timer
    @objc func cambiar() {
        if indiceActual < peliculasFiltradas.count-1{
             indiceActual = indiceActual + 1
        } else {
            indiceActual = 0
        }
        collectionViewMovie.scrollToItem(at: IndexPath(item: indiceActual, section: 0), at: .right, animated: true)
    }
    
    @IBAction func estrenosBtn(_ sender: UIButton) {
        print("Estrenos")
        performSegue(withIdentifier: "estrenos", sender: self)
    }
    
    
}
 // MARK: - SearchBar
extension MoviesViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //inicializar lista filtrada en vacio
        peliculasFiltradas = []
        
        if searchText == "" || searchText.isEmpty {
            peliculasFiltradas = movies
        } else {
            for peli in movies {
                if peli.titulo.lowercased().contains(searchText.lowercased()) {
                    peliculasFiltradas.append(peli)
                }
            }
        }
        
        self.collectionViewMovie.reloadData()
    }
}

// MARK: - CollectionView
extension MoviesViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionViewMovie.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
//        celda.alpha = 0
        celda.configurar(peli: peliculasFiltradas[indexPath.row])
        celda.movieImage.layer.cornerRadius = 10
        return celda
    }
    
    
    //Animacion
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//
//        let delay = sqrt(Double(indexPath.row)) * delayBase
//
//        UIView.animate(withDuration: animationDuration, delay: delay, options: .curveEaseOut, animations: {
//            cell.alpha = 1
//          })
//    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return peliculasFiltradas.count
    }
    
    
}

extension MoviesViewController: UICollectionViewDelegateFlowLayout{
    // MARK: - Tamaño de la celda
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 110, height: 190)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    // MARK: - Seleccionar una celda
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
        peliculaVer = peliculasFiltradas[indexPath.row]
        performSegue(withIdentifier: "verDetalle", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "verDetalle" {
            let vistaDetallada = segue.destination as! VistaDetalladaViewController
            vistaDetallada.peliculaMostrar = peliculaVer
        }
        
    }
}
