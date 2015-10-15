{ 
    personal_info: { 
        uid: 123,
        first_name: 'Rishi',
        last_name: 'Kaneriya',
        email: 'kaneriya@princeton.edu',
        animals: true,
        arts: true,
        education: true
    },
    charities: [ 
        { 
            ein: 456,
            name: 'Oxfam',
            description: 'Description of Oxfam here',
            type: 'personal'
        }, 
        {
            ...
        }
    ],
    friends: [ 
        {
            uid: 789,
            first_name: 'John',
            last_name: 'Doe',
            ...
        }

    ],
    notifications: [
        {
            type: 'new_friend_request',
            info: { 
                first_name: 'Jane',
                last_name: 'Doe'
                ...
            }
        }
    ]
}

// /user POST 

{ 
	"first_name": "Rishi", 
	"last_name": "Kaneriya", 
	"username": "rkaneriya",
	"email": "rkaneriya@appnexus.com",  
	"password_hash": "test", 
    "ar": true,
    "bh": true,
    "ed": false,
    "eh": true,
    "en": true,
    "he": true,
    "hu": false,
    "intl": true,
    "mu": true,
    "pu": true,
    "re": false,
    "un": true
}


{ 
    "username": "rkaneriya",
    "password_hash": "test"
}
