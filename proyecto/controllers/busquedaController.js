let db = require('../database/models')
let op = db.Sequelize.Op;
let bcrypt= require("bcryptjs");



let busquedaController = {
    showResult: function(req, res){
        let busc = req.query.search
        let muestra = {
            where: [{nombre:{[op.like]: `%${busqueda}%`}}],
            order: [
                ['createdAt', 'ASC']
            ],
            
        }
    }
    
    }
module.exports = busquedaController;