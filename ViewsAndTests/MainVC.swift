
import UIKit

class MainVC: UIViewController {
    
    var mainView: MainView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView = MainView(frame: CGRect.init(x: 0, y: 0, width: view.frame.width, height: view.frame.height))
        self.view.backgroundColor = UIColor.lightGray
        self.view.addSubview(mainView)
        
        mainView.setLayout(view: view)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

