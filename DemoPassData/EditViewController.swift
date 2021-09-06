//
//  EditViewController.swift
//  DemoPassData
//
//  Created by 林佩柔 on 2021/9/6.
//

import UIKit

class EditViewController: UIViewController {
    
    var likeList: LikeList = LikeList(drama: "", actor: "")
    
    @IBOutlet weak var likeActorTextField: UITextField!
    @IBOutlet weak var likeDramaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBSegueAction func showResult(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> ResultViewController? {
        likeList.actor = likeActorTextField.text!
        likeList.drama = likeDramaTextField.text!
        return ResultViewController(coder: coder, likeList: likeList)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    
    
    
     /*
     /*
     error:
     DemoPassData/ResultViewController.swift:20: Fatal error: init(coder:) has not been implemented
     2021-09-06 15:00:41.934004+0800 DemoPassData[38594:4789703] DemoPassData/ResultViewController.swift:20: Fatal error: init(coder:) has not been implemented
     */
     
     @IBSegueAction func showResultThroughNav(_ coder: NSCoder) -> UINavigationController? {
     let actor = likeActorTextField.text!
     let drama = likeDramaTextField.text!
     likeList = LikeList(drama: drama, actor: actor)
     
     let navigationController = UINavigationController(coder: coder)
     let viewController = navigationController?.viewControllers[0] as? ResultViewController
     viewController?.likeList = likeList
     
     return navigationController
     }
     */
        

    
    
    
}
