
//Optional binding

var urlImage: String?
var thumbnail: String?

if let existUrlImage = urlImage {
    print("Url is available: \(existUrlImage)")
} else {
    print("Url doesn't exist")
}


if let availableImage = urlImage, let availableThumbnail = thumbnail {
    print("Images are available 😀 \(availableImage) - \(availableThumbnail)")
} else {
    print("Images don't available")
}


var urlImageOk: String? = "www.image.com"
var thumbnailOk: String? = "www.thumbnail.com"

if let availableImage = urlImageOk, let availableThumbnail = thumbnailOk {
    print("Images are available 😀 \(availableImage) - \(availableThumbnail)")
} else {
    print("Images don't available")
}


if let firstName = Int("32") {
    print("Number is: \(firstName)")
}

if let firstName = Int("x") {
    print("Number is: \(firstName)")
} else {
    print("Var isn't a number")
}
