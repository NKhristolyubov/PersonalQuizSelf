//
//  Questions.swift
//  PersonalQuizSelf
//
//  Created by Николай Христолюбов on 07.10.2022.
//

struct Question {
    let title: String
    let responseType: AnswerType
    let answer: [Answer]
    
    private func getQuestion() -> [Question] {
        [
            Question(
                title: "какую пищу предпочитаете?",
                responseType: .single,
                answer: [
                    Answer(
                        title: "мясо",
                        animal: .dog),
                    Answer(
                        title: "рыба",
                        animal: .cat),
                    Answer(
                        title: "морковь",
                        animal: .rabbit),
                    Answer(
                        title: "кукуруза",
                        animal: .turtle)
                ]
            ),
            Question(
                title: "что вы любите больше всего?",
                responseType: .single,
                answer: [
                    Answer(
                        title: "плавать",
                        animal: .dog),
                    Answer(
                        title: "спать",
                        animal: .cat),
                    Answer(
                        title: "обниматься",
                        animal: .rabbit),
                    Answer(
                        title: "есть",
                        animal: .turtle)
                ]
            ),
            Question(
                title: "любите ли вы поездки на машине?",
                responseType: .single,
                answer: [
                    Answer(
                        title: "ненавижу",
                        animal: .cat),
                    Answer(
                        title: "нервничаю",
                        animal: .rabbit),
                    Answer(
                        title: "не замечаю",
                        animal: .turtle),
                    Answer(
                        title: "обожаю",
                        animal: .dog)
                ]
            )
        ]
    }
    
}

struct Answer {
    let title: String
    let animal: AnimalType
}

enum AnswerType {
    case single
    case multiple
    case ranged
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "вы собачка"
        case .cat:
            return "вы кошечка"
        case .rabbit:
            return "вы кролик"
        case .turtle:
            return "вы черепашка"
        }
    }
}


