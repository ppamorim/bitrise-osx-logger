/**
 Endpoints of the server.
 */
enum EndPoint: String {
  case AUTH = "/api/auth"
  func urlString() -> String {
    return Server.SERVER_ADDRESS.rawValue + self.rawValue
  }
}

enum Server: String {
  /**
   Address of the server.
   */
  case SERVER_ADDRESS = "http://bitrise.io"
}
