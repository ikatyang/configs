// Ref: https://michaellynn.github.io/2015/10/24/apples-bookmarkdata-exposed/

import Foundation

var items = SFL2(url: .favoriteItemsFile)
items.remove(bookmark: .recentFilesDirectory)
items.append(bookmark: .homeDirectory)
items.save()

struct SFL2 {
  let url: URL
  var data: [String: Any]

  init(url: URL) {
    guard let data = try? Data(contentsOf: url),
      let data = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data),
      let data = data as? [String: Any]
    else {
      fatalError()
    }
    self.url = url
    self.data = data
  }

  func has(bookmark bookmarkToBeDetermined: URL) -> Bool {
    guard let items = data["items"] as? [[String: Any]] else {
      fatalError()
    }
    return items.contains { item in
      let bookmark = URL(resolvingBookmarkData: item["Bookmark"] as! Data)
      return bookmark == bookmarkToBeDetermined
    }
  }

  mutating func remove(bookmark bookmarkToBeRemoved: URL) {
    guard has(bookmark: bookmarkToBeRemoved) else {
      log("Removing `\(bookmarkToBeRemoved.relativePath)`: Not found")
      return
    }
    guard var items = data["items"] as? [[String: Any]] else {
      fatalError()
    }
    items.removeAll { item in
      let bookmark = URL(resolvingBookmarkData: item["Bookmark"] as! Data)
      return bookmark == bookmarkToBeRemoved
    }
    data["items"] = items
    log("Removing `\(bookmarkToBeRemoved.relativePath)`: Success")
  }

  mutating func append(bookmark bookmarkToBeAppended: URL) {
    guard !has(bookmark: bookmarkToBeAppended) else {
      log("Appending `\(bookmarkToBeAppended.relativePath)`: Already exists")
      return
    }
    guard var items = data["items"] as? [[String: Any]] else {
      fatalError()
    }
    items.append([
      "uuid": UUID().uuidString,
      "visibility": false,
      "Bookmark": bookmarkToBeAppended.bookmarkData(),
    ])
    data["items"] = items
    log("Appending `\(bookmarkToBeAppended.relativePath)`: Success")
  }

  func save() {
    guard NSKeyedArchiver.archiveRootObject(data, toFile: url.relativePath) else {
      fatalError()
    }
  }
}

extension URL {
  static var favoriteItemsFile: URL {
    URL(filePath: "\(URL.homeDirectory.relativePath)/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.FavoriteItems.sfl2")
  }
  static var recentFilesDirectory: URL {
    URL(filePath: "/System/Library/CoreServices/Finder.app/Contents/Resources/MyLibraries/myDocuments.cannedSearch/")
  }
  init(resolvingBookmarkData bookmark: Data) {
    var isStale = false
    try! self.init(resolvingBookmarkData: bookmark, bookmarkDataIsStale: &isStale)
  }
  func bookmarkData() -> Data {
    try! self.bookmarkData(options: .suitableForBookmarkFile, includingResourceValuesForKeys: nil, relativeTo: nil)
  }
}

func log(_ content: String) {
  print("[setup-finder-favorite-items] \(content)")
}
