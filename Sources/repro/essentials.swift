import FoundationEssentials

func essentials() throws {

  let m = FileManager.default
  print(
    "Current directory: \(URL(fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true))"
  )

  do {
    let u = try m.url(
      for: .itemReplacementDirectory,
      in: .userDomainMask,
      appropriateFor: .init(
        fileURLWithPath: FileManager.default.currentDirectoryPath, isDirectory: true),
      create: true)

    try String("hello world").write(
      to: u.appendingPathComponent("a.txt"), atomically: true, encoding: .utf8)

    print(try String(contentsOf: u.appendingPathComponent("a.txt"), encoding: .utf8))
  } catch {
    print(error.localizedDescription)
    throw error
  }

  print("Done")
}
