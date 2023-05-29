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
            type: dataTypes.DATE
        }, 
        updatedAt:{
            type: dataTypes.DATE
        },
        deletedAt:{
            type: dataTypes.DATE
        },
    }

    let config = {
        tableName: 'usuarios',
        timestamps: true
    }


    let Usuario = sequelize.define(alias,cols,config);
    
    Usuario.associate= function (models){
        Usuario.hasMany(models.Comentario,{
            as: 'comentario', 
            foreignKey:'id_usuario', 

        });
        Usuario.hasMany(models.Producto,{
            as: 'producto',
            foreignKey:'id_usuario',
        })

    }

    return Usuario; 


}


