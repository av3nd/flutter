const db = require('../config/db');
const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
    email:{
        type:String,
        lowercase:true,
        required:true,
        unique:true
    },
    password:{
        type:String,
        required:true
    }
});

const UserModel = mongoose.model('user', userSchema);
const data = new UserModel({email:'avend@gmail.com', password:'avend123'});
data.save();

// const data = async () => {
//     const result = await newModel.insertMany([{email:'ronaldo@gmail.com',password:'ronaldo123'},
//     {email:'messi@gmail.com',password:'messi123'}]);
// console.log(result);
// }
// data();

module.exports = UserModel;