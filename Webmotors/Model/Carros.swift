//
//  Carros.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import UIKit

class Carros: Codable {
    let id: Int
    let fabricante: String
    let modelo: String
    let versao: String
    let imagem: String
    let km: Int
    let valor: String
    let anoModelo: Int
    let anoFabricacao: Int
    let cor: String

    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case fabricante = "Make"
        case modelo = "Model"
        case versao = "Version"
        case imagem = "Image"
        case km = "KM"
        case valor = "Price"
        case anoModelo = "YearModel"
        case anoFabricacao = "YearFab"
        case cor = "Color"
    }

    init(id: Int, fabricante: String, modelo: String, versao: String, imagem: String, km: Int, valor: String, anoModelo: Int, anoFabricacao: Int, cor: String) {
        self.id = id
        self.fabricante = fabricante
        self.modelo = modelo
        self.versao = versao
        self.imagem = imagem
        self.km = km
        self.valor = valor
        self.anoModelo = anoModelo
        self.anoFabricacao = anoFabricacao
        self.cor = cor
    }
}
