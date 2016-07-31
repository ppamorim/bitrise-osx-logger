import Alamofire
import AlamofireObjectMapper

func auth(email: String,
          password: String,
          success: (String?) -> (),
          error: (NSError?) -> ()) {
  let params = [
    "email": email,
    "password": password
  ]
  Alamofire.request(.POST, EndPoint.AUTH.urlString(), parameters: params)
    .validate()
//    .responseObject { (response: Response<_, NSError>) in
//      if response.result.isSuccess {
//        success(response.result.value, user)
//      } else {
//        error(response.result.error)
//      }
//    }
}