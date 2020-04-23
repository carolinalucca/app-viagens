//
//  ViewController.swift
//  App Viagens
//
//  Created by Carolina Lucca on 23/04/20.
//  Copyright © 2020 Carolina Lucca. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tabelaViagens: UITableView! //Referencia a table view das viagens
    
    // MARK: - Atributos
    
    let listaViagens: Array<String> = ["Rio de Janeiro", "Belo Horizonte", "Salvador"]

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self // Avisa a tabela que esse controller é o responsável
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) // Busca a celula pelo identificador
        celula.textLabel?.text = listaViagens[indexPath.row] // Adiciona o conteudo da lista na celula de acordo com a posiçao no array
        return celula
    }


}

