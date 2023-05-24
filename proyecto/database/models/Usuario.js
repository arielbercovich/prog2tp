module.exports = function (sequelize, dataTypes){
    let alias = "Usuario";
    let cols = {
        id: {
            primaryKey: true,
            autoIncrement: true,
            type: dataTypes.INTEGER
        },
        email:{
            type: dataTypes.STRING(50)
        },
        contrasena:{
            type: dataTypes.STRING(50)
        },
        info_foto: {
            type: dataTypes.STRING(20)
        },
        fecha: {
            type: dataTypes.DATE
        },
        dni: {
            type: dataTypes.INTEGER
        },
        createdAt:{
            type: dataType.DATE
        }, 
        updatedAt:{
            type: dataTypes.DATE
        },
        deletedAt:{
            type: dataTypes.DATE
        },
    }

    let conf = {
        tableName: 'usuarios'
    }


    let Usuario = sequelize.define(alias,cols,conf);
    
    
    return Usuario; 
}