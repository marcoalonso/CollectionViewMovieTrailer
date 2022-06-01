//
//  MovieCollectionViewCell.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    
    
    func configurar(peli: Movie){
        movieImage.image = peli.imagen
        tituloLabel.text = peli.titulo
    }
}
