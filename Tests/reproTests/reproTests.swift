import Testing
@testable import repro

@Test func testFoundation() async throws {
    try foundation()
}

@Test func testEssentials() async throws {
    try essentials()
}
