import RealmSwift
import ObjectMapper

class App: Object, Mappable {
  dynamic var id: Int = 0
  dynamic var name: String?
  dynamic var branches = [String]()
  
  required convenience init?(_ map: Map){
    self.init()
  }
  
  func mapping(map: Map) {
    id <- map["id"]
    name <- map["name"]
  }
  
}