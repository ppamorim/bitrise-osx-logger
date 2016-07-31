import RealmSwift
import ObjectMapper

class User: Object, Mappable {

  dynamic var id: Int = 0
  dynamic var email: String?
  dynamic var token: String?

  required convenience init?(_ map: Map) {
    self.init()
  }

  func mapping(map: Map) {
    id <- map["id"]
    email <- map["email"]
    token <- map["token"]
  }

}
