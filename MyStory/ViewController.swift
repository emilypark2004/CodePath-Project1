//
//  ViewController.swift
//  MyStory
//
//  Created by Emily Park on 2/27/23.
//

import UIKit

class ViewController: UIViewController {
    let college = Context(name: "UCSD", type: "college", image: UIImage(named: "college")!, text:"Emily goes to UCSD.")
    let hometown = Context(name: "Brea, CA", type: "hometown", image: UIImage(named: "hometown")!, text: "Emily is from Brea, CA.")
    let hobbies = Context(name: "Hiking", type: "hobbies", image: UIImage(named: "hiking")!, text: "Emily enjoys going on hikes.")
    
    var contexts: [Context] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contexts = [college, hometown, hobbies]
    }

    
    @IBAction func didTapContext(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.context = contexts[0]
            } else if tappedView.tag == 1 {
                detailViewController.context = contexts[1]
            } else if tappedView.tag == 2 {
                detailViewController.context = contexts[2]
            } else {
                print("No Context was tapped, please check your selection.")
            }
        }
    }

}

