cats = [
    {
        name: "Brad Angelo Pit",
        age: 12,
        gender: "Male",
        enjoys: "Long naps by the window and the occational belly rub",
        image: "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
    },
    {
        name: "Jennifurrr Aniston",
        age: 11,
        gender:"Female",
        enjoys:"Loves the outdoors and the wind blowing through her fur.",
        image:"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Tabby_cat_with_blue_eyes-3336579.jpg/997px-Tabby_cat_with_blue_eyes-3336579.jpg?20180427181903"
    },
    {
        name: "Gambit",
        age: 5,
        gender: "Male",
        enjoys:"Gets super excited when other cats are around. Loves company!",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Cat_zoom.jpg/1599px-Cat_zoom.jpg?20181213123113"
    },
   {
        name: "Kitty",
        age: 4,
        gender: "Female",
        enjoys: "Honesty, creativity, is into sports i.e. chasing mice and other pesky pests",
        image: "https://i2.pickpik.com/photos/782/943/665/grey-cat-domestic-animal-cat-eyes-tabby-preview.jpg"
    },
]

cats.each do |cat|
    Cat.create cat
    puts "creating cat #{cat}"
end