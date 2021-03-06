//
//  MusicListVC.swift
//  SwappingScreen
//
//  Created by Milind Patel on 2017-11-21.
//  Copyright © 2017 Milind Patel. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismiss(animated:  true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        
        let songTitle = "Jai Ho"
        performSegue(withIdentifier: "SongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            
            if let song = sender as? String{
            destination.selectedSong = song
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
