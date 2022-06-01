//
//  Movie.swift
//  CollectionMovie
//
//  Created by marco rodriguez on 01/06/22.
//

import Foundation
import UIKit

struct Movie {
    let titulo: String
    let imagen: UIImage
    let descripcion: String
}

let movies: [Movie] = [
    Movie(titulo: "Morvius", imagen: UIImage(named: "morvius")!, descripcion: "Ambientada en el universo de Spider Man, se centra en uno de sus villanos más icónicos, Morbius, un doctor que tras sufrir una enfermedad en la sangre y fallar al intentar curarse, se convirtió en un vampiro."),
    Movie(titulo: "Scream", imagen: UIImage(named: "scream")!, descripcion: "25 años después de que una racha de asesinatos brutales conmocionara a la tranquila ciudad de Woodsboro, un nuevo asesino imitador se ha puesto la máscara de Ghostface para resucitar secretos del pasado."),
    Movie(titulo: "Muerte en el Nilo", imagen: UIImage(named: "nilo")!, descripcion: "El detective Hercule Poirot investiga el asesinato de una rica y joven heredera a bordo del mismo crucero por el río Nilo en el que pasa las vacaciones Poirot."),
    Movie(titulo: "Uncharted fuera del Mapa", imagen: UIImage(named: "uncharted")!, descripcion: "El cazador de tesoros Victor Sullivan recluta a Nathan Drake para que lo ayude a recuperar una fortuna de 500 años de antigüedad. Lo que comienza como un atraco se convierte en una competencia contra el despiadado Santiago Moncada."),
    Movie(titulo: "Batman", imagen: UIImage(named: "batman")!, descripcion: "En su segundo año luchando contra el crimen, Batman explora la corrupción existente en la ciudad de Gotham y el vínculo de esta con su propia familia. Además, entrará en conflicto con un asesino en serie conocido como el Acertijo."),
    Movie(titulo: "Red 2", imagen: UIImage(named: "red2")!, descripcion: "El agente retirado de operaciones encubiertas la CIA, Frank Moses, vuelve a reunir a su peculiar equipo de élite. En este caso para emprender la búsqueda a nivel global de un dispositivo nuclear portátil desaparecido."),
    Movie(titulo: "Jurasic World", imagen: UIImage(named: "jurasic")!, descripcion: "Han pasado 22 años desde que el millonario John Hammond clonara el primer dinosaurio. Con tecnologías mejoradas y nuevas medidas de seguridad, el parque temático Jurassic World abre sus puertas. La nueva atracción del parque es el Indominus Rex, una nueva especie de dinosaurio creada por los científicos de forma artificial y más peligrosa que las otras especies conocidas. Sin embargo, algo sale mal y el dinosaurio se escapa y provoca el caos en el parque"),
    Movie(titulo: "Downtown el legado continua", imagen: UIImage(named: "down")!, descripcion: "Lord y Lady Grantham anuncian que están encantados de volver a contar con la grata compañía de los amantes del cine en su mansión de Yorkshire durante estas Navidades 2021."),
    Movie(titulo: "Buzz Lightyear", imagen: UIImage(named: "bus")!, descripcion: "Buzz Lightyear se embarca en una aventura intergaláctica con un grupo de reclutas ambiciosos y su compañero robot."),
    Movie(titulo: "TopGun Maveric", imagen: UIImage(named: "top")!, descripcion: "Tras más de 30 años de servicio como uno de los mejores aviadores de la Armada, Pete Maverick Mitchel se encuentra dónde siempre quiso estar, empujando los límites como un valiente piloto de prueba."),
    Movie(titulo: "Liga de SuperMascotas", imagen: UIImage(named: "mascota")!, descripcion: "En 'DC Liga De Súper-Mascotas', Krypto el superperro y Superman son mejores amigos inseparables que comparten los mismos superpoderes y luchan juntos contra el crimen en Metropolis. Cuando Superman y el resto de la Liga de la Justicia son secuestrados, Krypto debe convencer a una banda de animales (Ace el sabueso, PB el minicerdo, Merton la tortuga y Chip la ardilla) a dominar sus propios poderes recién descubiertos y ayudarlo a rescatar a los superhéroes."),
    Movie(titulo: "Doctor Strange 2", imagen: UIImage(named: "doctor")!, descripcion: "El Dr. Stephen Strange abre un portal al multiverso al utilizar un hechizo prohibido. Ahora su equipo debe enfrentarse a una amenaza enorme."),
    Movie(titulo: "Morvius", imagen: UIImage(named: "morvius")!, descripcion: "Ambientada en el universo de Spider Man, se centra en uno de sus villanos más icónicos, Morbius, un doctor que tras sufrir una enfermedad en la sangre y fallar al intentar curarse, se convirtió en un vampiro."),
    Movie(titulo: "Scream", imagen: UIImage(named: "scream")!, descripcion: "25 años después de que una racha de asesinatos brutales conmocionara a la tranquila ciudad de Woodsboro, un nuevo asesino imitador se ha puesto la máscara de Ghostface para resucitar secretos del pasado."),
    Movie(titulo: "Muerte en el Nilo", imagen: UIImage(named: "nilo")!, descripcion: "El detective Hercule Poirot investiga el asesinato de una rica y joven heredera a bordo del mismo crucero por el río Nilo en el que pasa las vacaciones Poirot."),
    Movie(titulo: "Uncharted fuera del Mapa", imagen: UIImage(named: "uncharted")!, descripcion: "El cazador de tesoros Victor Sullivan recluta a Nathan Drake para que lo ayude a recuperar una fortuna de 500 años de antigüedad. Lo que comienza como un atraco se convierte en una competencia contra el despiadado Santiago Moncada."),
    Movie(titulo: "Batman", imagen: UIImage(named: "batman")!, descripcion: "En su segundo año luchando contra el crimen, Batman explora la corrupción existente en la ciudad de Gotham y el vínculo de esta con su propia familia. Además, entrará en conflicto con un asesino en serie conocido como el Acertijo."),
    Movie(titulo: "Red 2", imagen: UIImage(named: "red2")!, descripcion: "El agente retirado de operaciones encubiertas la CIA, Frank Moses, vuelve a reunir a su peculiar equipo de élite. En este caso para emprender la búsqueda a nivel global de un dispositivo nuclear portátil desaparecido."),
    Movie(titulo: "Jurasic World", imagen: UIImage(named: "jurasic")!, descripcion: "Han pasado 22 años desde que el millonario John Hammond clonara el primer dinosaurio. Con tecnologías mejoradas y nuevas medidas de seguridad, el parque temático Jurassic World abre sus puertas. La nueva atracción del parque es el Indominus Rex, una nueva especie de dinosaurio creada por los científicos de forma artificial y más peligrosa que las otras especies conocidas. Sin embargo, algo sale mal y el dinosaurio se escapa y provoca el caos en el parque"),
    Movie(titulo: "Downtown el legado continua", imagen: UIImage(named: "down")!, descripcion: "Lord y Lady Grantham anuncian que están encantados de volver a contar con la grata compañía de los amantes del cine en su mansión de Yorkshire durante estas Navidades 2021."),
    Movie(titulo: "Buzz Lightyear", imagen: UIImage(named: "bus")!, descripcion: "Buzz Lightyear se embarca en una aventura intergaláctica con un grupo de reclutas ambiciosos y su compañero robot."),
    Movie(titulo: "TopGun Maveric", imagen: UIImage(named: "top")!, descripcion: "Tras más de 30 años de servicio como uno de los mejores aviadores de la Armada, Pete Maverick Mitchel se encuentra dónde siempre quiso estar, empujando los límites como un valiente piloto de prueba."),
    Movie(titulo: "Liga de SuperMascotas", imagen: UIImage(named: "mascota")!, descripcion: "En 'DC Liga De Súper-Mascotas', Krypto el superperro y Superman son mejores amigos inseparables que comparten los mismos superpoderes y luchan juntos contra el crimen en Metropolis. Cuando Superman y el resto de la Liga de la Justicia son secuestrados, Krypto debe convencer a una banda de animales (Ace el sabueso, PB el minicerdo, Merton la tortuga y Chip la ardilla) a dominar sus propios poderes recién descubiertos y ayudarlo a rescatar a los superhéroes."),
    Movie(titulo: "Doctor Strange 2", imagen: UIImage(named: "doctor")!, descripcion: "El Dr. Stephen Strange abre un portal al multiverso al utilizar un hechizo prohibido. Ahora su equipo debe enfrentarse a una amenaza enorme.")
]
