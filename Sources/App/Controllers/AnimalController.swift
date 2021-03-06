import Vapor

final class AnimalController {
    
    var animalNames: [String] {
        return animals.map({ $0.name })
    }
    
    lazy var animals: [Animal] = {
       return resetAnimals()
    }()
    
    func resetAnimals() -> [Animal] {
        return [
            Animal(id: 1,
                   name: "Lion",
                   timeSeen: Date(timeIntervalSince1970: 1476381432),
                   latitude: 41.0059666,
                   longitude: -8.596247,
                   description: "A large tawny-colored cat that lives in prides, found in Africa and northwestern India. The male has a flowing shaggy mane and takes little part in hunting, which is done cooperatively by the females.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208108-357e8000-6f8f-11e9-89fa-acd05e383c63.jpg"),
            
            Animal(id: 2,
                   name: "Zebra",
                   timeSeen: Date(timeIntervalSince1970: 1538180415),
                   latitude: 45.4401623,
                   longitude: 39.5186898,
                   description: "An African wild horse with black-and-white stripes and an erect mane.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208109-357e8000-6f8f-11e9-911d-9ec9b245d35f.jpg"),
            
            Animal(id: 3,
                   name: "Flamingo",
                   timeSeen: Date(timeIntervalSince1970: 1483741219),
                   latitude: 38.7080654,
                   longitude: -9.3872558,
                   description: "A tall wading bird with mainly pink or scarlet plumage and long legs and neck. It has a heavy bent bill that is held upside down in the water in order to filter-feed on small organisms.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208110-357e8000-6f8f-11e9-9356-6caa5aa2bcab.jpg"),
            
            Animal(id: 4,
                   name: "Brown Meerkat",
                   timeSeen: Date(timeIntervalSince1970: 1548905617),
                   latitude: 31.887402,
                   longitude: 115.440283,
                   description: "A small southern African mongoose, especially the suricate.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208111-36171680-6f8f-11e9-863c-15290cc227af.jpg"),
            
            Animal(id: 5,
                   name: "Baboon",
                   timeSeen: Date(timeIntervalSince1970: 1367371199),
                   latitude: 34.6911,
                   longitude: 106.221144,
                   description: "A large Old World ground-dwelling monkey with a long doglike snout, large teeth, and naked callosities on the buttocks. Baboons are social animals and live in troops.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208112-36171680-6f8f-11e9-83dc-84a5eaeb98e7.jpg"),
            
            Animal(id: 6,
                   name: "Brown Bear",
                   timeSeen: Date(timeIntervalSince1970: 1408047986),
                   latitude: 56.91683,
                   longitude: -117.61945,
                   description: "A large bear with a coat color ranging from cream to black, occurring chiefly in forests in Eurasia and North America.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208113-36171680-6f8f-11e9-967b-32d8799c2132.jpg"),
            
            Animal(id: 7,
                   name: "Hyena",
                   timeSeen: Date(timeIntervalSince1970: 1444126635),
                   latitude: 39.353118,
                   longitude: -9.1143068,
                   description: "A doglike African mammal with forelimbs that are longer than the hind limbs and an erect mane. Hyenas are noted as scavengers but most are also effective hunters",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208114-36171680-6f8f-11e9-955d-23b2fcdfa5db.jpg"),
            
            Animal(id: 8,
                   name: "Squirrel",
                   timeSeen: Date(timeIntervalSince1970: 1529567628),
                   latitude: 36.6850384,
                   longitude: 117.0714935,
                   description: "An agile tree-dwelling rodent with a bushy tail, typically feeding on nuts and seeds.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208115-36171680-6f8f-11e9-8922-93d5d5d4dcc1.jpg"),
            
            Animal(id: 9,
                   name: "Python",
                   timeSeen: Date(timeIntervalSince1970: 1523244077),
                   latitude: 49.689425,
                   longitude: 21.9126813,
                   description: "A large heavy-bodied nonvenomous constrictor snake occurring throughout the Old World tropics.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208116-36171680-6f8f-11e9-8d22-3da23e804af9.jpg"),
            
            Animal(id: 10,
                   name: "Chimpanzee",
                   timeSeen: Date(timeIntervalSince1970: 1450987325),
                   latitude: 12.6417,
                   longitude: 123.9092,
                   description: "A great ape with large ears, mainly black coloration, and lighter skin on the face, native to the forests of western and central Africa. Chimpanzees show advanced behavior such as the making and using of tools.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208117-36171680-6f8f-11e9-8b0e-513914711bd9.jpg"),
            
            Animal(id: 11,
                   name: "Crab",
                   timeSeen: Date(timeIntervalSince1970: 1486234736),
                   latitude: 11.8859782,
                   longitude: -86.054235,
                   description: "A crustacean with a broad carapace, stalked eyes, and five pairs of legs, the first pair of which are modified as pincers. Crabs are abundant on many shores, especially in the tropics, where some have become adapted to life on land.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208119-36171680-6f8f-11e9-83dc-88a080f85b7f.jpg"),
            
            Animal(id: 12,
                   name: "Jaguar",
                   timeSeen: Date(timeIntervalSince1970: 1395166126),
                   latitude: -10.1429097,
                   longitude: 123.6707189,
                   description: "A large heavily built cat that has a yellowish-brown coat with black spots, found mainly in the dense forests of Central and South America.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208120-36afad00-6f8f-11e9-8d62-649d0b9e83ff.jpg"),
            
            Animal(id: 13,
                   name: "Eagle",
                   timeSeen: Date(timeIntervalSince1970: 1456242326),
                   latitude: 34.5553494,
                   longitude: 69.207486,
                   description: "A large bird of prey with a massive hooked bill and long broad wings, renowned for its keen sight and powerful soaring flight.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208121-36afad00-6f8f-11e9-9577-ff7fbf176d90.jpg"),
            
            Animal(id: 14,
                   name: "Dove",
                   timeSeen: Date(timeIntervalSince1970: 1450402567),
                   latitude: 9.3125556,
                   longitude: 42.1226825,
                   description: "A stocky seed- or fruit-eating bird with a small head, short legs, and a cooing voice. Doves are generally smaller and more delicate than pigeons, but many kinds have been given both names.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208122-36afad00-6f8f-11e9-8f29-c4c64cfc2656.jpg"),
            
            Animal(id: 15,
                   name: "Dolphin",
                   timeSeen: Date(timeIntervalSince1970: 1525001519),
                   latitude: 6.5592478,
                   longitude: 124.6846104,
                   description: "A small gregarious toothed whale that typically has a beaklike snout and a curved fin on the back. Dolphins have become well known for their sociable nature and high intelligence.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208123-36afad00-6f8f-11e9-9841-1b4524d88d67.jpg"),
            
            Animal(id: 16,
                   name: "Deer",
                   timeSeen: Date(timeIntervalSince1970: 1433710478),
                   latitude: 7.0739678,
                   longitude: -73.1692652,
                   description: "A hoofed grazing or browsing animal, with branched bony antlers that are shed annually and typically borne only by the male. See also mouse deer, musk deer.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208124-36afad00-6f8f-11e9-9768-937e608e7b61.jpg"),
            
            Animal(id: 17,
                   name: "Tortoise",
                   timeSeen: Date(timeIntervalSince1970: 1371092000),
                   latitude: 53.7002,
                   longitude: 102.7117,
                   description: "A turtle, typically a herbivorous one that lives on land.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208125-36afad00-6f8f-11e9-9b1f-ae16f9665958.jpg"),
            
            Animal(id: 18,
                   name: "Seal",
                   timeSeen: Date(timeIntervalSince1970: 1497998321),
                   latitude: 26.655026,
                   longitude: 102.244683,
                   description: "A fish-eating aquatic mammal with a streamlined body and feet developed as flippers, returning to land to breed or rest.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208126-36afad00-6f8f-11e9-8bea-e808ca535f21.jpg"),
            
            Animal(id: 19,
                   name: "Parrot",
                   timeSeen: Date(timeIntervalSince1970: 1527470745),
                   latitude: 10.0016057,
                   longitude: 123.4091052,
                   description: "A bird, often vividly colored, with a short down-curved hooked bill, grasping feet, and a raucous voice, found especially in the tropics and feeding on fruits and seeds. Many are popular as cage birds, and some are able to mimic the human voice.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208127-37484380-6f8f-11e9-903c-b90748c4118d.jpg"),
            
            Animal(id: 20,
                   name: "Lizard",
                   timeSeen: Date(timeIntervalSince1970: 1375437692),
                   latitude: 29.995762,
                   longitude: 120.586109,
                   description: "A reptile that typically has a long body and tail, four legs, movable eyelids, and a rough, scaly, or spiny skin.",
                   imageURL: "https://user-images.githubusercontent.com/16965587/57208128-37484380-6f8f-11e9-8d93-d9b762cd7b6e.jpg")
        ]
    }
}
