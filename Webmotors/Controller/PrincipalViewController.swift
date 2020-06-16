//
//  PrincipalViewController.swift
//  Webmotors
//
//  Created by Junior Obici on 15/06/20.
//  Copyright © 2020 Junior Obici. All rights reserved.
//

import UIKit

class PrincipalViewController: UIViewController {
    
    //MARK: - Variaveis
    var carros: [Carros] = []
    
    //Infinite Scroll
    var buscarMais: Bool = false
    var paginaAtual: Int = 1
    var total: Int = 0
    
    //MARK: - Componentes
    var labelMensagem: UILabel = {
        var label = UILabel()
        label.textAlignment = .center
        label.textColor = UIColor(named: "Titulo")
        label.font = UIFont(name: "Helvetica", size: 18.0)
        label.text = "Não há carros aqui"
        return label
    }()
    @IBOutlet weak var tableCarros: UITableView!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        loadXib()
        loadCarros()
    }
    
    //MARK: - Funcoes
    func setupUI() {
        let atributos = [NSAttributedString.Key.foregroundColor: UIColor.principal]
        navigationController?.navigationBar.largeTitleTextAttributes = atributos
    }
    
    func loadXib() {
        tableCarros.register(UINib(nibName: "CarrosTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func loadCarros() {
        buscarMais = true
        NetworkManager.getCarros(pagina: paginaAtual, onComplete: { (carros) in
            DispatchQueue.main.async {
                self.carros += carros
                self.tableCarros.reloadData()
                self.buscarMais = false
            }
        }) { (error) in
            print("Erro ao carregar os dados: \(error)")
        }
    }
}

extension PrincipalViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let count: Int = carros.count
        tableCarros.backgroundView = count == 0 ? labelMensagem : nil
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CarrosTableViewCell
        if indexPath.row == self.carros.count - 10 && !buscarMais && self.carros.count != total {
            paginaAtual += 1
            loadCarros()
        }
        cell.prepareCell(carros: carros[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let carro = self.carros[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "detalhesVC") as! DetalhesViewController
        controller.carros = carro
        self.tableCarros.selectRow(at: nil, animated: true, scrollPosition: .none)
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
