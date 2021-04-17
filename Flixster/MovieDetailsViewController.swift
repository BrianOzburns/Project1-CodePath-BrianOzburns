//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Brian Ozawa Burns on 4/16/21.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var backdropView: UIImageView!
    // @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var backgroundGradient: UIView!
    
    
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Create a gradient layer
        let gradientLayer = CAGradientLayer()
        // Set the size of the layer to be equal to the size of the display
        gradientLayer.frame = view.bounds
        // Set an array of Core Graphics colors (whatever these are haha) to create the gradient
        gradientLayer.colors = [UIColor(red: 70/255, green: 70/255, blue: 70/255, alpha: 1).cgColor, UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1).cgColor]
        
        gradientLayer.shouldRasterize = true
        // Apply the gradient to the backgroundGradient
        backgroundGradient.layer.insertSublayer(gradientLayer, at: 0)
        
        

        // Do any additional setup after loading the view.
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        // let baseUrl = "https://image.tmdb.org/t/p/w185"
        // let posterPath = movie["poster_path"] as! String
        // let posterUrl = URL(string: baseUrl + posterPath)
        
        // posterView.af_setImage(withURL: posterUrl!)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
