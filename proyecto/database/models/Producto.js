module.exports = function (sequelize, dataTypes){
    let alias = "Producto";
    let cols = {
        id: {
            primaryKey: true,
            autoIncrement: true,
            type: dataTypes.INTEGER
        },
        id_usuario:{
            type: dataTypes.INTEGER
        },
        nombre_producto:{
            type: dataTypes.STRING(50)
        },
        descripcion:{
            type: dataTypes.STRING(100)
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

    let conf={}


    let Producto=sequelize.define(alias,cols,conf);
    return Producto; 



}