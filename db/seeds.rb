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
    {
        name: "Whiskers",
        age: 4,
        gender: "Male",
        enjoys: "I love napping in the sun and watching birds outside. Looking for a female feline companion who enjoys lazy afternoons and taking it easy.",
        image: "https://cdn.pixabay.com/photo/2023/03/24/18/42/ai-generated-7874629_1280.jpg"
    },
    {
        name: "Luna",
        age: 2,
        gender: "Female",
        enjoys: "I love chasing toy mice and playing hide-and-seek. Seeking a male playful cat who will join me in fun and games.",
        image: "https://cdn.pixabay.com/photo/2023/04/03/18/34/ai-generated-7897640_1280.jpg"
    },
    {
        name: "Felix",
        age: 3,
        gender: "Male",
        enjoys: "I love to groom myself and keep my fur clean and soft. Seeking a female cat who appreciates a well-groomed partner.",
        image: "https://cdn.pixabay.com/photo/2023/02/13/22/45/ai-generated-7788468_1280.jpg"
    },
    {
        name: "Socks",
        age: 1,
        gender: "Female",
        enjoys: "I love to explore new places and find hidden corners to nap in. Looking for a male cat who likes to wander and discover new territories.",
        image: "https://cdn.pixabay.com/photo/2022/12/31/10/32/cat-7688396_1280.jpg"
    },
    {
        name: "Simba",
        age: 5,
        gender: "Male",
        enjoys: "I love snuggling up with my human and getting lots of affection. Seeking a female cuddly cat who will shower me with love and affection.",
        image: "https://cdn.pixabay.com/photo/2023/01/19/15/30/lion-7729407_1280.jpg"
    },
    {
        name: "Cleopatra",
        age: 2,
        gender: "Female",
        enjoys: "I love to be pampered and have my every need met. Looking for a male cat who knows how to treat a royal partner.",
        image: "https://cdn.pixabay.com/photo/2023/02/21/17/49/cat-7804758__480.jpg"
    },
    {
        name: "Tiger",
        age: 3,
        gender: "Male",
        enjoys: "I love to climb and scratch on cat trees. Seeking a female cat who enjoys climbing and has a penchant for scratching posts.",
        image: "https://i1.pickpik.com/photos/507/536/845/cat-three-colored-cat-three-coloured-lucky-cat-thumb.jpg"
    },
    {
        name: "Fluffy",
        age: 1,
        gender: "Female",
        enjoys: "I love to birdwatch and chatter at birds. Seeking a male cat who loves birds and can join me in a good birdwatching session.",
        image: "https://i1.pickpik.com/photos/309/78/565/cat-cat-purebred-charming-thumb.jpg"
    },
    {
        name: "Shadow",
        age: 4,
        gender: "Male",
        enjoys: "I love to watch fish in an aquarium. Seeking a female cat who loves fish and can join me in mesmerizing fish-watching sessions.",
        image: "https://cdn.pixabay.com/photo/2016/11/19/22/05/cat-1841372_1280.jpg"
    },
    {
        name: "Whispers",
        age: 2,
        gender: "Female",
        enjoys: "I love to meow at my human and communicate my needs. Seeking a male cat who has a way with words and enjoys communicating with their partner.",
        image: "https://cdn.pixabay.com/photo/2023/03/05/06/52/ai-generated-7830734_1280.jpg"
    },
    {
        name: "Kitty Purry",
        age: 4,
        gender: "Female",
        enjoys: "I love to snuggle up and watch romantic comedies. Seeking a male cat who has a soft spot for love stories and cuddles.",
        image: "https://cdn.pixabay.com/photo/2023/04/16/16/00/ai-generated-7930567_1280.jpg"
    },
    {
        name: "Leonardo DiCatrio",
        age: 5,
        gender: "Male",
        enjoys: "I love to explore the outdoors and go on adventures. Looking for a female cat who is brave and adventurous.",
        image: "https://cdn.pixabay.com/photo/2023/04/05/12/48/kitten-7901442_1280.jpg"
    },
    {
        name: "Tomcat Cruise",
        age: 2,
        gender: "Male",
        enjoys: "I love to play with toy cars and race around. Seeking a female cat who shares my love for fast and furious fun.",
        image: "https://cdn.pixabay.com/photo/2021/01/01/23/23/cat-5880257_1280.jpg"
    },
    {
        name: "Meryl Streepurrr",
        age: 6,
        gender: "Female",
        enjoys: "I love to read classic novels and enjoy a good cup of tea. Seeking a male cat who appreciates the finer things in life and can join me in quiet relaxation.",
        image: "https://cdn.pixabay.com/photo/2023/04/14/10/26/cat-7924725_1280.jpg"
    },
]

cats.each do |cat|
    Cat.create cat
    puts "creating cat #{cat}"
end