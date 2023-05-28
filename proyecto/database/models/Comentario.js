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
        tableName: 'comentarios',
        timestamps: true
    }


    let Comentario = sequelize.define(alias,cols,conf);

    Comentario.associate= function (models){
        Comentario.belongsTo(models.Usuario, {
            as: 'usuario',
            foreignKey: 'id_usuario',
        })
        Comentario.belongTo(models.Producto,{
            as: 'producto',
            foreignKey: 'id_post',

        })
    }


    return Comentario; 
}