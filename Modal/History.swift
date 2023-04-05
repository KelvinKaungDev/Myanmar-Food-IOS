struct History {
    var history = [
        HistoryBrain(image: "laphatthoke", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        HistoryBrain(image: "laphatthoke", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        HistoryBrain(image: "laphatthoke", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.")
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
