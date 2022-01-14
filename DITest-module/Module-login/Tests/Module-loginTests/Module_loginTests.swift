import XCTest
@testable import Module_login
import Swinject

final class Module_loginTests: XCTestCase {
    func test_usecase_without_swinject(){
        let loginNetwork = LoginNetworkImpl()
        let localData = LocalDataImpl()
        let loginRepository = LoginRepositoryImpl(network: loginNetwork, local: localData)
        let sut = GetMessageUseCase(repository: loginRepository)
        
        XCTAssertEqual(sut.getMessage(), "Oke")
    }
    
    func test_usecase_with_swinject_mockdataTrue_shouldReturnMock(){
        let sut: GetMessageUseCase = SetupModuleLogin(isMockData: true).resolve()
        XCTAssertEqual(sut.getMessage(), "Mock")
    }
    
    func test_usecase_with_swinject_default_shouldReturnOke(){
        let sut: GetMessageUseCase = SetupModuleLogin().resolve()
        XCTAssertEqual(sut.getMessage(), "Oke")
    }
}
