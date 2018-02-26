import Foundation


class BlogService {

    init(managedObjectContext: NSManagedObjectContext) {

    }

    func fetchSiteInfo(forAddress: String, success: (SiteInfo) -> Void, failure: (Error) -> Void) {
        
    }

    func findBlog(withXmlrpc: String, andUsername: String) -> Blog? {
        return nil
    }
}
