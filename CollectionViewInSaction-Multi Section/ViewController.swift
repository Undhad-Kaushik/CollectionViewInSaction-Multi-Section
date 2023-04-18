//
//  ViewController.swift
//  CollectionViewInSaction-Multi Section
//
//  Created by undhad kaushik on 16/04/23.
//

import UIKit



var data = [MovieData(sectionType: "Telugu movie", movies: ["c11","c12","c13","c14","c15","c16","c55","c76","c49","c40"]),
            MovieData(sectionType: "BollyWood movie", movies: ["c17","c18","c19","c20","c21","c22","c33","c76","c87","c28"]),
            MovieData(sectionType: "Hollywood movie", movies: ["c23","c24","c25","c26","c27","c28","c71","c83","c43","c11"]),
            MovieData(sectionType: "south movie", movies: ["c29","c30","c31","c32","c33","c34","c67","c63","c55","c77"]),
            MovieData(sectionType: "urdu movie", movies: ["c35","c36","c37","c38","c38","c40","c88","c15","c24","c22"]),
            MovieData(sectionType: "malayalam movie", movies: ["c41","c42","c43","c44","c45","c46","c28","c31","c18","c23"]),
            MovieData(sectionType: "panjabi movie", movies: ["c47","c48","c49","c50","c51","c52","c22","c78","c86","c90"]),
            MovieData(sectionType: "gujarati movie", movies: ["c53","c54","c55","c56","c57","c58","c44","c22","c33","c46"]),
            MovieData(sectionType: "nepali movie", movies: ["c59","c60","c61","c62","c63","c64","c22","c28","c13","c77"]),
            MovieData(sectionType: "hariyanvi movie", movies: ["c65","c66","c67","c68","c69","c70","c44","c33","c22","c11"]),
            MovieData(sectionType: "bangla movie", movies: ["c71","c72","c73","c74","c75","c76","c55","v45","c35","c25"]),
            MovieData(sectionType: "kathiyawadi movie", movies: ["c77","c78","c79","c80","c81","c82","c83","c84","c85","c86"])]

class ViewController: UIViewController {
    
    @IBOutlet weak var tabelview: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate , UITableViewDataSource{
    
    // mark:  Methods
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Tcell", for: indexPath) as! TableViewCell
        cell.collectionView.tag = indexPath.section
       
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data[section].sectionType
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .clear
    }
    
}
