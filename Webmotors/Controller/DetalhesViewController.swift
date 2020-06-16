//
//  DetalhesViewController.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import UIKit
import SDWebImage

class DetalhesViewController: UIViewController {
    
    //MARK: - Variaveis
    var carros: Carros!
    
    //MARK: - Componentes
    @IBOutlet weak var viewFundoImagem: UIView!
    @IBOutlet weak var imagemCarro: UIImageView!
    @IBOutlet weak var imagemFabricante: UIImageView!
    @IBOutlet weak var labelFabricante: UILabel!
    @IBOutlet weak var labelModelo: UILabel!
    @IBOutlet weak var labelAno: UILabel!
    @IBOutlet weak var viewCorCarro: UIView!
    @IBOutlet weak var labelDescricao: UILabel!
    @IBOutlet weak var labelCombustivel: UILabel!
    @IBOutlet weak var labelTransmissao: UILabel!
    @IBOutlet weak var labelKm: UILabel!
    @IBOutlet weak var labelPortas: UILabel!
    @IBOutlet weak var labelValor: UILabel!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDados()
    }
    
    //MARK: - Funcoes
    func loadDados() {
        imagemCarro.sd_setImage(with: URL(string: carros.imagem), completed: nil)
        imagemFabricante.image = UIImage(named: carros.fabricante.lowercased())
        labelFabricante.text = carros.fabricante
        labelModelo.text = carros.modelo
        labelAno.text = "\(carros.anoFabricacao), \(carros.anoModelo)"
        labelDescricao.text = carros.versao
        
        let versao = carros.versao
        if versao.contains("FLEX") {
            labelCombustivel.text = "Flex"
        } else if versao.contains("GASOLINA") {
            labelCombustivel.text = "Gasolina"
        } else {
            labelCombustivel.text = "Flex"
        }
        
        if versao.contains("AUTOMÁTICO") {
            labelTransmissao.text = "Automático"
        } else if versao.contains("AUTOMATIZADO") {
            labelTransmissao.text = "Automatizado"
        } else if versao.contains("MANUAL") {
            labelTransmissao.text = "Manual"
        }
        
        labelKm.text = "\(carros.km.formatNumber())"
        labelValor.text = carros.valor.Moeda
        
        switch carros.cor {
        case "Azul":
            return viewCorCarro.backgroundColor = .blue
        case "Branco":
            return viewCorCarro.backgroundColor = .white
        case "Branca":
            return viewCorCarro.backgroundColor = .white
        case "Cinza":
            return viewCorCarro.backgroundColor = .gray
        case "Preto":
            return viewCorCarro.backgroundColor = .black
        case "Vermelho":
            return viewCorCarro.backgroundColor = .red
        default:
            return viewCorCarro.isHidden = true
        }
    }
    
}
