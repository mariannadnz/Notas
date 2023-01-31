
import UIKit
class RegisterViewController: UIViewController {
    
    
    let RegisterScreenCustomView = GradesRegisterScreen()
    
    override func loadView() {
        view = RegisterScreenCustomView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        RegisterScreenCustomView.registerButton.addTarget(self, action: #selector(NextViewController), for: .touchUpInside)
        
        
    }
    

    
    @objc func NextViewController() {
        let createUser = CreateUser()
        
        let loginViewController = LoginViewController()
        
        loginViewController.createUser = createUser
        UserRepositoryMock.shared.UserMock.append(createUser)
        
        self.navigationController?.pushViewController(loginViewController, animated: true)
        
    }
    func CreateUser() -> User {
        return User(
            name: RegisterScreenCustomView.txtFieldName.text ?? "",
            cpf: RegisterScreenCustomView.txtFieldCpf.text ?? "",
            birth: RegisterScreenCustomView.txtFieldBirthDate.text ?? "",
            phone: RegisterScreenCustomView.txtFieldPhoneNumber.text ?? "",
            login: .init(email: RegisterScreenCustomView.txtFieldEmail.text ?? "", password: RegisterScreenCustomView.txtFieldRg.text ?? ""))
    }
}
