cats = [
    {
        name: 'Cinnamon',
        age: 2,
        enjoyments: "Sleeping!!"
        image: "https://thumbs.dreamstime.com/b/adorable-elegant-cat-looking-up-to-side-sitting-white-background-wearing-black-hat-red-bow-tie-adorable-elegant-112960928.jpg",
        ideal_date: "Have a park picnic and have delightful conversation."
    },
    {
        name: 'Wiz',
        age: 1,
        enjoyments: "Eating dog food and chilling."
        image: "https://i.pinimg.com/originals/c2/c1/eb/c2c1eba5f165f96b9940d43499a477b5.jpg"
        ideal_date: "Let's get out and get some exercise!"
    },
    {
        name: 'Sasha'
        age: 2,
        enjoyments: "Scratch up all the furniture in the house.",
        image: "https://tailoredpetservices.com/wp-content/uploads/2018/08/081118_Playful-Cat-Breeds.jpg",
        ideal_date: "Have a conversation over coffee."
    },
    {
        name: 'Razzle and Dazzle'
        age: 1,
        enjoyments: "Lets just say, a little catnip never hurt nobody."
        image: "https://cdn.mos.cms.futurecdn.net/YpATSu666sWALSP2oRRK9g.jpg",
        ideal_date: "Catnip and axe throwing sounds like a plan."
    },
    {
        name: 'Sabrina',
        age: 3,
        enjoyments: "Sneaking outside and doing hoodcat stuff with my friends."
        image: "https://i.guim.co.uk/img/media/3658c3cac56c053089808bd82e098fb58dbf8bb5/0_0_2709_2953/master/2709.jpg?width=700&quality=85&auto=format&fit=max&s=f1bba36df12f0b33e8b0ffed21d82351"
        ideal_date: "Take a walk on my block and let you meet all of my cat friends."
    },
    {
        name: 'Kitty',
        age: 7,
        enjoyments: "lurking around looking for sugarbabies. Cougar style. Puuurrrrrr"
        image: "https://animals.sandiegozoo.org/sites/default/files/2016-11/animals_hero_mountainlion%20copy.jpg"
        ideal_date:"I'll take you out and shower you with salmon and all the little mouse toys your heart desires."
    }, 
]

cats.each do |cat|
    Cat.create(cat)
    puts "creating cate #{cat}"
end
