

import Foundation

class DataHolder {
    static let shared = DataHolder()

    
    let clients: [Client] = [
        Client(code: 0, name: "Teresa", email: "tere@mail.com", visited: true, phone: 69457845, image: "https://images.unsplash.com/photo-1542157585-ef20bfcce579?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60"),
        Client(code: 1, name: "Juan", email: "juan@gmail.com", visited: false, phone: 64547845, image: "https://media.istockphoto.com/photos/beautiful-young-woman-looking-up-picture-id1281998579?b=1&k=20&m=1281998579&s=170667a&w=0&h=8weMRk8eeY-ZIG68YH4r21Oy8ZkqA7tkY9qajeNZcoU="),
        Client(code: 2, name: "Ivan", email: "ivan@gmial.com", visited: true, phone: 694578451, image: "https://media.istockphoto.com/photos/headshot-portrait-of-smiling-ethnic-businessman-in-office-picture-id1300512215?b=1&k=20&m=1300512215&s=170667a&w=0&h=LsZL_-vvAHB2A2sNLHu9Vpoib_3aLLkRamveVW3AGeQ="),
        Client(code: 3, name: "Javi", email: "javi@mail.com", visited: true, phone: 69457845, image: "https://media.istockphoto.com/photos/middle-age-man-portrait-picture-id1285124274?b=1&k=20&m=1285124274&s=170667a&w=0&h=tdCWjbu8NxR_vhU3Tri7mZcfUH6WdcYWS1aurF4bbKI="),
        Client(code: 4, name: "Laura", email: "lau@mail.com", visited: true, phone: 64584574, image: "https://media.istockphoto.com/photos/headshot-portrait-of-smiling-female-employee-posing-in-office-picture-id1318858332?b=1&k=20&m=1318858332&s=170667a&w=0&h=Y5ftO74WtXOrMEl8WkNhVjwbNah6gYFsrrvWJGF-tcQ="),
        Client(code: 5, name: "Paula", email: "pau@gmail.com", visited: false, phone: 69457845, image: "https://media.istockphoto.com/photos/one-beautiful-woman-looking-at-the-camera-in-profile-picture-id1303539316?b=1&k=20&m=1303539316&s=170667a&w=0&h=ePGGvjsOR__-R2KSvZ67xXl2x-CkVzKg8q_WtvqLww0="),
        Client(code: 6, name: "Vanessa", email:  "lavane@gmail.com", visited: false, phone: 69745874, image: "https://media.istockphoto.com/photos/african-american-woman-day-dreaming-in-public-park-on-beautiful-day-picture-id1289286426?b=1&k=20&m=1289286426&s=170667a&w=0&h=4e53OLksvcme-rwNZA0V57nFV4LG9343xZs6tY4xuLg="),
        Client(code: 7, name: "Pedro", email: "pepi@mail.com", visited: false, phone: 6457845, image: "https://media.istockphoto.com/photos/portrait-of-a-black-man-with-braids-picture-id1308469855?b=1&k=20&m=1308469855&s=170667a&w=0&h=qa7juJE4iVSvTdgxVRd3Ultzt_kYwDicgQBzGGQ03B4="),
        Client(code: 8, name: "Julio", email: "jul@mail.com", visited: false, phone: 547845874, image: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60"),
        Client(code: 9, name: "Manolo", email: "man@mail.com", visited: true, phone: 451245784, image: "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfDJ8MHx8&auto=format&fit=crop&w=500&q=60"),
        Client(code: 10, name: "Mentrido", email: "men@mail.com", visited: true, phone: 694574125, image: "https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHByb2ZpbGV8ZW58MHwyfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
        Client(code: 11, name: "Pepa", email: "pepa@mail.com", visited: false, phone: 64545874, image: "https://media.istockphoto.com/photos/overjoyed-pretty-asian-woman-look-at-camera-with-sincere-laughter-picture-id1311084168?b=1&k=20&m=1311084168&s=170667a&w=0&h=mE8BgXPgcHO1UjSmdWYa21NIKDzJvMrjOffy39Ritpo=")
    ]
}
