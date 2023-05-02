require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      Cat.create(
        name:"Sergio",
        age: 4,
        enjoyments: "I like sleeping and eating friskie cats",
        image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg",
        ideal_date: "attacking dogs and stings in my free time"
      )
      get '/cats'
      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
      
    end
  end
    describe "POST/create" do
      it "creates a cat" do
      cat_params = {
        cat: {
          name: 'Sergio',
          age: 4,
          enjoyments: "I like sleeping and eating friskie cats",
          image: "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg",
          ideal_date: "Lets go attack a dogs and follow up with yarn balling in my free time"
        }
      }
      post "/cats", params: cat_params
      expect(response).to have_http_status(200)
      cat = Cat.first
      expect(cat.name).to eq 'Sergio' 
      expect(cat.age).to eq 4 
      expect(cat.enjoyments).to eq "I like sleeping and eating friskie cats" 
      expect(cat.image).to eq "https://i.pinimg.com/474x/a7/e8/89/a7e889effe08ecbede2ddaafbecdbd66.jpg" 
      expect(cat.ideal_date).to eq "Lets go attack a dogs and follow up with yarn balling in my free time"
      end
    end
  end
  
