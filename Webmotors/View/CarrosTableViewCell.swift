//
//  CarrosTableViewCell.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import UIKit
import SDWebImage

class CarrosTableViewCell: UITableViewCell {
    
    //MARK: - Componentes
    @IBOutlet weak var viewFundo: UIView!
    @IBOutlet weak var imagemCarro: UIImageView!
    @IBOutlet weak var labelValor: UILabel!
    @IBOutlet weak var labelFabricanteModelo: UILabel!
    @IBOutlet weak var labelVersão: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func prepareCell(carros: Carros) {
        imagemCarro.sd_setImage(with: URL(string: carros.imagem), completed: nil)
        labelValor.text = carros.valor
        labelFabricanteModelo.text = "\(carros.fabricante), \(carros.modelo)"
        labelVersão.text = carros.versao
    }
}
