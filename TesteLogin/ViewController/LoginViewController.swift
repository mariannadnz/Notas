
import UIKit
class LoginViewController: UIViewController {
    
    let LoginScreenCustomView = LoginScreen()
    private var lolo = UserRepositoryMock.shared //
    var createUser: User?
    override func loadView() {
        view = LoginScreenCustomView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        LoginScreenCustomView.loginButton.addTarget(self, action: #selector(getLogin), for: .touchUpInside)
        LoginScreenCustomView.registerButton.addTarget(self, action: #selector(registerViewController), for: .touchUpInside)
    }
    
    @objc func registerViewController() {
        
        let registerViewController = RegisterViewController()
        self.navigationController?.pushViewController(registerViewController, animated: true)
        
    }
    
    @objc func NextViewController() {
        
        let MenuViewController = MenuViewController()
        self.navigationController?.pushViewController(MenuViewController, animated: true)
        
    }
    
    func receiveIndexList(index: Int) {
        print(index, "<<<<<<<<<<<<<<")
    }
    
    @objc func getLogin() {
        DispatchQueue.main.asyncAfter(deadline: .now()+0.1){
            self.lolo.getLogin{[self] users in // dentro do lolo pego o get login - pega o array tbm
                let login = users.first{ user in // var recebe tds os user - o .first roda a variavel e usa
                    user.login.email == self.LoginScreenCustomView.txtFieldName.text
                }
                
            //    print(users, login)
                
                if login != nil && login!.login.password == LoginScreenCustomView.txtFieldPassword.text{ //se o login n for nulo e a senha escrita bater com a senha guardada vai pra prox pagina
                    NextViewController()
                }
                else { print ("n rolou fiot")}
            }
        }
        
    }
}
