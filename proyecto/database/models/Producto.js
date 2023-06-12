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
        fecha_carga:{
            type: dataTypes.DATE
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
        foto:{
            type: dataTypes.STRING
        },
        posicion:{
            type: dataTypes.STRING
        },
        detalle:{
            type: dataTypes.STRING
        }
    }

    let config = {
        tableName: 'productos',
        timestamps: true
    }


    let Producto = sequelize.define(alias,cols,config);
   
    Producto.associate = function (models){
        Producto.hasMany(models.Comentario,{
            as:'comentario',
            foreignKey:'id_post',

        })
        Producto.belongsTo(models.Usuario,{
            as:'usuario',
            foreignKey:'id_usuario',
        })
    }


    
    
    return Producto; 
}

