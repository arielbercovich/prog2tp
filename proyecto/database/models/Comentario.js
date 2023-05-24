module.exports = function (sequelize, dataTypes){
    let alias = "Comentario";
    let cols = {
        id: {
            primaryKey: true,
            autoIncrement: true,
            type: dataTypes.INTEGER
        },
        id_post:{
            type: dataTypes.INTEGER
        },
        id_usuario:{
            type: dataTypes.INTEGER
        },
        texto_comentario:{
            type: dataTypes.TEXT
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
        tableName: 'comentarios'
    }


    let Comentario = sequelize.define(alias,cols,conf);
    
    
    return Comentario; 
}