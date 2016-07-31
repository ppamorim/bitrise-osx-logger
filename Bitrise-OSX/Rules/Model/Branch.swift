import RealmSwift
import ObjectMapper

class Branch: Object, Mappable {

  dynamic var id: Int = 0
  dynamic var name: String?

  required convenience init?(_ map: Map) {
    self.init()
  }
  
  func mapping(map: Map) {
    id <- map["id"]
    name <- map["name"]
  }

}
