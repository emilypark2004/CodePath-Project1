//
//  DetailViewController.swift
//  MyStory
//
//  Created by Emily Park on 2/27/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var context: Context?
    
    @IBOutlet weak var contextImageView: UIImageView!
    
    @IBOutlet weak var contextText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let context = context {
            contextImageView.image = context.image
            contextText.text = context.text
        }
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
