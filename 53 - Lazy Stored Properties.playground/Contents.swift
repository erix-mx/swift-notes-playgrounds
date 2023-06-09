class DataImporter {
    /*
    DataImporter is a class to import data from an external file.
    The class is assumed to take a nontrivial amount of time to initialize.
    */
    var filename = "data.txt"
    // the DataImporter class would provide data importing functionality here
}


class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
    // the DataManager class would provide data management functionality here
}


let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
// the DataImporter instance for the importer property hasn't yet been created

let newDataImporter = DataImporter()
newDataImporter.filename = "hello.txt"
manager.importer = newDataImporter
print(manager.importer.filename)
// the DataImporter instance for the importer property has now been created
// Prints "data.txt"
