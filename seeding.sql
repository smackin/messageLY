\c messagely_test
-- const db = require('.db')
-- const { User } = require('./models/user')
-- const faker = require('faker')


const seed = async () => { 
    try {
    await db.sync({ force: true })
    -- // Declare a variable and set it equal to an array. 
    let users = []
-- This for loop decides how many datapoints you will create.
    for (let i = 0; i < 100; i++) {
        let newUser = {
    const fusername = faker.internet.userName(),
    const password = faker.lorem.words(1)
    const fFirst_name =  faker.name.firstName(),
    const fLast_name =  faker.name.lastName(),
    const fPhone = faker.phone.number()
    }
    -- For each fake user you create, you're going to push them into the user array you declare above
    users.push(newUser)
    } catch(e) {
        next(e) 
    }
    }
};