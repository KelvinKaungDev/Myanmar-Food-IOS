import Foundation

struct History {
    var history = [
        HistoryBrain(image: "foodOne", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        HistoryBrain(image: "foodTwo", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        HistoryBrain(image: "foodThree", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
    ]
    
    func count() -> Int {
        return history.count
    }
    
    func image(number : Int) -> String {
        return history[number].image
    }
    
    func description(number : Int) -> String {
        return history[number].description
    }
}
