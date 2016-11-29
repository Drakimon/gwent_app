# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# Templates
#   Card.create(name:, deck:, strength:, role:, combatType:, cardAbility:, description:)
#   Deck.create(deckName:, faction:, user:)
#   DeckCard.create(deck:, card:)
#   User.create(username:, password:)

# All the cards
Card.create(name:"Arachas", deck:"Monsters", role:"Basic", strength:4, combatType:"Melee", cardAbility:"Muster", description:"")
Card.create(name:"Arachas", deck:"Monsters", role:"Basic", strength:4, combatType:"Melee", cardAbility:"Muster", description:"")
Card.create(name:"Arachas", deck:"Monsters", role:"Basic", strength:4, combatType:"Melee", cardAbility:"Muster", description:"")
Card.create(name:"Arachas Behemoth", deck:"Monsters", role:"Basic", strength:6, combatType:"Siege", cardAbility:"Muster", description:"")
Card.create(name:"Botchling", deck:"Monsters", role:"Basic", strength:4, combatType:"Melee", cardAbility:"None", description:"")
Card.create(name:"Celaeno Harpy", deck:"Monsters", role:"Basic", strength:2, combatType:"Range", cardAbility:"None", description:"")
Card.create(name:"Cockatrice", deck:"Monsters", role:"Basic", strength:2, combatType:"Range", cardAbility:"None", description:"")
Card.create(name:"Crone Brewess", deck:"Monsters", role:"Basic", strength:6, combatType:"Melee", cardAbility:"Muster", description:"")
Card.create(name:"Crone Weavess", deck:"Monsters", role:"Basic", strength:6, combatType:"Melee", cardAbility:"Muster", description:"")
Card.create(name:"Crone Whispess", deck:"Monsters", role:"Basic", strength:6, combatType:"Melee", cardAbility:"Muster", description:"")
Card.create(name:"Draug", deck:"Monsters", role:"Basic", strength:10, combatType:"Melee", cardAbility:"Immune to special", description:"")
Card.create(name:"Earth Elemental", deck:"Monsters", role:"Basic", strength:6, combatType:"Siege", cardAbility:"None", description:"")
# A test user
User.create(username:"Test", password:"Insecure")
# A test deck
Deck.create(deckName:"My First Deck", faction:"Monsters", user:User.find(1))
# A couple of cards in the test deck
DeckCard.create(deck:Deck.find(1), card:Card.find(1))
DeckCard.create(deck:Deck.find(1), card:Card.find(2))
