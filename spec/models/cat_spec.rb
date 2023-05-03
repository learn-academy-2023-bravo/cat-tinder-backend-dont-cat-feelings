require 'rails_helper'

RSpec.describe Cat, type: :model do
    it "should validate name exists in the entry" do 
        cat = Cat.create(age: 4, enjoyments: "I like sleeping and eating friskie cats", image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg", ideal_date: "Lets go attack a dogs and follow up with yarn balling in my free time") 
        expect(cat.errors[:name]).to_not be_empty
    end
    it "should validate age exists in the entry" do 
        cat = Cat.create(name: "Sergio", enjoyments: "I like sleeping and eating friskie cats", image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg", ideal_date: "Lets go attack a dogs and follow up with yarn balling in my free time") 
        expect(cat.errors[:age]).to_not be_empty
    end
    it "should validate enjoyments exists in the entry" do
        cat = Cat.create(name: "Sergio", age: 4, image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg", ideal_date: "Lets go attack a dogs and follow up with yarn balling in my free time")
        expect(cat.errors[:enjoyments]).to_not be_empty
    end
    it "should validate image exists in the entry" do
        cat = Cat.create(name: "Sergio", age: 4, enjoyments: "I like sleeping and eating friskie cats", ideal_date: "Lets go attack a dogs and follow up with yarn balling in my free time")
        expect(cat.errors[:image]).to_not be_empty
    end
    it "should validate ideal date exists in the entry" do 
        cat = Cat.create(name: "Sergio", age: 4, enjoyments: "I like sleeping and eating friskie cats", image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg")
        expect(cat.errors[:ideal_date]).to_not be_empty
    end
    it "should have an enjoyments statement >= 10" do 
        cat = Cat.create(name: "Sergio", age: 4, enjoyments: "cooling", image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg", ideal_date: "Lets go attack a dogs and follow up with yarn balling in my free time")
        expect(cat.errors[:enjoyments]).to_not be_empty
    end
end
