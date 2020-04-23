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
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    
    // MARK: - Atributos
    
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self // Avisa a tabela que esse controller é o responsável
        self.viewHoteis.layer.cornerRadius = 10
        self.viewPacotes.layer.cornerRadius = 10
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        listaViagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let viagemAtual = listaViagens[indexPath.row]

        cell.textLabel?.text = viagemAtual.titulo

        return cell
    }


}

