//
//  SongDetailView.swift
//  Song List
//
//  Created by Diego Moreno on 13/10/22.
//

import Foundation
import UIKit

class DetailVC : UIViewController {

    @IBOutlet weak var ivImage: ImageViewCustom!
    @IBOutlet weak var lbSongName: UILabel!
    @IBOutlet weak var tvSongDesc: UITextView!
    @IBOutlet weak var lbGenre: UILabel!
    @IBOutlet weak var pvGenres: UIPickerView!
    
    var picker : PickerView!
    
    var songName : String = ""
    var songImage : String = ""
    var songDesc : String = ""
    var songGenre : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbSongName.text = songName
        tvSongDesc.text = songDesc
        if let url = URL(string: songImage){
            ivImage.loadImage(from: url)
        }
        lbGenre.text = songGenre
        
        picker = PickerView()
        pvGenres.dataSource = picker
        pvGenres.delegate = picker
        
        pvGenres.selectRow(picker.musicGenre.firstIndex(of: songGenre)!, inComponent: 0, animated: true)
    }
}
