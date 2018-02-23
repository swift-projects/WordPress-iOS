import Foundation
import CocoaLumberjack
import WordPressShared


/// Individual cases represent each step in the signup process.
///
enum SignupStatus: Int {
    case validating
    case creatingUser
    case authenticating
    case creatingBlog
    case syncing
}

typealias SignupStatusBlock = (_ status: SignupStatus) -> Void
typealias SignupSuccessBlock = () -> Void
typealias SignupFailureBlock = (_ error: Error?) -> Void


/// SignupService is responsible for creating a new WPCom user and blog.
/// The entry point is `createBlogAndSigninToWPCom` and the service takes care of the rest.
///
open class SignupService: NSObject {

    init(managedObjectContext: NSManagedObjectContext) {

    }


    func createBlogAndSigninToWPCom(blogURL url: String,
                                            blogTitle: String,
                                            emailAddress: String,
                                            username: String,
                                            password: String,
                                            status: @escaping SignupStatusBlock,
                                            success: @escaping SignupSuccessBlock,
                                            failure: @escaping SignupFailureBlock) {

    }


//    func validateWPComBlogWithParams(_ params: SiteCreationParams,
//                                     status: SignupStatusBlock,
//                                     success: @escaping SignupSuccessBlock,
//                                     failure: @escaping SignupFailureBlock) {
//
//    }

    func createWPComUserWithParams(_ params: SignupParams,
                                   status: SignupStatusBlock,
                                   success: @escaping SignupSuccessBlock,
                                   failure: @escaping SignupFailureBlock) {

    }

    func createWPComeUserWithGoogle(token: String,
                                   success: @escaping SignupSuccessBlock,
                                   failure: @escaping SignupFailureBlock) {
    }

    func signinWPComUserWithParams(_ params: SignupParams,
                                  status: SignupStatusBlock,
                                  success: @escaping (_ account: WPAccount) -> Void,
                                  failure: @escaping SignupFailureBlock) {

    }

//    func createWPComBlogForParams(_ params: SiteCreationParams,
//                                    account: WPAccount,
//                                    status: SignupStatusBlock,
//                                    success: @escaping (_ blog: Blog) -> Void,
//                                    failure: @escaping SignupFailureBlock) {
//
//    }

    func updateAndSyncBlogAndAccountInfo(_ blog: Blog,
                                         status: SignupStatusBlock,
                                         success: @escaping SignupSuccessBlock,
                                         failure: @escaping SignupFailureBlock) {
    }


    @objc func trackAccountCreationError(_ error: Error?) {
    }

    /// An internal struct for conveniently sharing params between the different
    /// sign up steps.
    ///
    struct SignupParams {

        // Email address for wpcom account.
        var email: String

        // wpcom username
        var username: String

        // wpcom password
        var password: String
    }


    /// A convenience enum for creating meaningful NSError objects.
    ///
    enum SignupError: Error {
        case invalidResponse
        case missingRESTAPI
        case missingDefaultWPComAccount
    }

    /// A convenience struct for response keys
    private struct ResponseKeys {
        static let bearerToken = "bearer_token"
        static let username = "username"
    }
}
