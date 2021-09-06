//
//  ResultViewController.swift
//  DemoPassData
//
//  Created by 林佩柔 on 2021/9/6.
//

import UIKit

class ResultViewController: UIViewController {
    
    var likeList: LikeList?
    
    init?(coder: NSCoder, likeList: LikeList) {
        self.likeList = likeList
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var actorLabel: UILabel!
    @IBOutlet weak var dramaLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let likeList = likeList else { return }
        actorLabel.text = likeList.actor
        dramaLabel.text = likeList.drama
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
