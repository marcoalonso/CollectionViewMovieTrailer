//
//  VistaDetalladaViewController.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import UIKit

class VistaDetalladaViewController: UIViewController {
    
    var peliculaMostrar: Movie?
    
    var favorito: Bool = true
    
    
    
    @IBOutlet weak var favoritoBtn: UIBarButtonItem!
    
    @IBOutlet weak var tituloPeliculaLabel: UILabel!
    @IBOutlet weak var descripcionPeliculaLabel: UITextView!
    @IBOutlet weak var imagenPelicualLabel: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tituloPeliculaLabel.text = peliculaMostrar?.titulo ?? ""
        descripcionPeliculaLabel.text = peliculaMostrar?.descripcion ?? ""
        imagenPelicualLabel.image = peliculaMostrar?.imagen ?? UIImage(named: "display.trianglebadge.exclamationmark")
        imagenPelicualLabel.layer.cornerRadius = 13
    }
    
    
    @IBAction func verTrailerBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "verTrailer", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let verTrailer = segue.destination as! TrailerViewController
        verTrailer.trailerURL = peliculaMostrar?.urlTrailer ?? "https://www.youtube.com/channel/UCknu6vH4a8tXLFpM_uQ-hBA"
    }
    

    @IBAction func favoritoAction(_ sender: UIBarButtonItem) {
        
        
        
        favoritoBtn.image = favorito ? UIImage(systemName: "heart.fill") : UIImage(systemName: "heart")
        
        favorito = !favorito
    }
    

}
