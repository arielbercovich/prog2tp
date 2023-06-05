let productos = {
   arqueros: [
        {
            id:1,
            nombre: 'Gabriel Arias',
            descripcion: 'Gabriel Arias Arroyo es un futbolista chileno nacido en Argentina. Juega como arquero en Racing Club de la Primera División de Argentina y es internacional con la selección de Chile.',
            imagen: "arias.png",
            detalle: 'Racing - Arquero - 02/03/1990 - CHI',
            comentarios: [
                {
                    id: 1,
                    usuario: "Julian",
                    texto:"Idolo en Racing. Las gano todas",
                },
            ]
        },

        {
            id:2,
            nombre: 'German Salort',
            descripcion: 'Germán Guillermo Salort es un futbolista argentino. Juega de Arquero y su equipo actual es Comunicaciones, de la Primera Nacional',
            imagen: "salort.png",
            detalle: 'Comunicaciones - Arquero - 22/2/2000 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Julian",
                    texto:"Recien comenzando. Crack total",
                },
            ]
        },
        {
            id:3,
            nombre: 'Leandro Brey',
            descripcion: 'Leandro Brey es un futbolista argentino. Actualmente es el arquero de la Reserva del C.A Boca Juniors. Debutó con 17 años en Los Andes',
            imagen: "brey.png",
            detalle: 'Boca Juniors - Arquero - 02/10/2001 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Miguel",
                    texto:"Recien comenzando. Crack total",
                },
            ]
        },
        {
            id:4,
            nombre: 'Augusto Batalla',
            descripcion: 'Augusto Batalla es un futbolista argentino. Actualmente es el arquero titular de San Lorenzo de Almagro. Es de la cantera de River y estuvo al borde de jugar en el Real Madrid',
            imagen: "batalla.png",
            detalle: 'San Lorenzo - Arquero - 13/04/1997 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Roni",
                    texto:"Recien comenzando. Crack total",
                },
            ]
        }

    ],
    defensores: [
        {
            id:5,
            nombre: 'Facundo Mura',
            descripcion: 'Facundo Mura (General Roca, Río Negro, 24 de marzo de 1999) es un futbolista argentino. Juega de lateral derecho y su equipo actual es Racing Club de la Primera División de Argentina.',
            imagen: "mura.png",
            detalle: 'Racing - Lateral Derecho - 29/02/2000 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Mario Saralegui",
                    texto:"Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban",
                },
            ]
        },
        {
            id:6,
            nombre: 'Federico Gattoni',
            descripcion: 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independiente de Avellaneda. Se desenvuelve como mediocampista ofensivo, disputó 7 partidos y convirtió 1 goles en Argentina (Primera División), mientras que jugó 34 partidos y convirtió 2 goles en el extranjero',
            imagen: "gattoni.png",
            detalle: 'San Lorenzo - Defensor Central - 29/02/2000 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Mario Saralegui",
                    texto:"Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban",
                },
            ]
        },
        {
            id:7,
            nombre: 'Bruno Bianchi',
            descripcion: 'Bruno Félix Bianchi Massey es un futbolista argentino. Juega como marcador central y su primer equipo fue Estudiantes de La Plata. Actualmente milita en Atlético Tucumán de la Liga Profesional',
            imagen: "bianchi.png",
            detalle: 'Atletico Tucuman - Defensor Central - 09/12/1993 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Mario Saralegui",
                    texto:"Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban",
                },
            ]
        },
        {
            id:8,
            nombre: 'Alan Rodriguez',
            descripcion: 'Alan Rodríguez (Fernando de la Mora, 15 de agosto de 2000) es un futbolista paraguayo. Juega como lateral izquierdo o interior izquierdo y su actual equipo es Rosario Central de la Primera División de Argentina.',
            imagen: "alan.png",
            detalle: 'Racing - Lateral Derecho - 29/02/2000 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Mario Saralegui",
                    texto:"Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban",
                },
            ]
        },

    ],
    volantes: [
        {
            id:9,
            nombre: 'Baltasar Barcia',
            descripcion: 'Mateo Baltasar Barcia Fernández es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independiente de Avellaneda. Se desenvuelve como mediocampista ofensivo, disputó 7 partidos y convirtió 1 goles en Argentina (Primera División), mientras que jugó 34 partidos y convirtió 2 goles en el extranjero',
            imagen: "baltasar.png",
            detalle: 'Independiente - Volante Ofensivo - 19/02/2001 - URU',
            comentarios: [
                {
                    id: 1,
                    usuario: "Mario Saralegui",
                    texto:"Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban",
                },
            ]
        },
        
        {
            id:10,
            nombre: 'Ignacio Fernández',
            descripcion: 'Ignacio Martín Fernández es un futbolista argentino. Se desempeña como mediocampista y su equipo actual es River Plate de la Primera División de Argentina',
            imagen: "nacho fernandez.png",
            detalle: 'River Plate - Mediocampista Ofensivo - 12/01/1990 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Gerardo",
                    texto:"Jugador Historico en River. Estuvo en el plantel de la final en madrid 2018",
                },
            ]
        },
        {
                id:11,
                nombre: 'Federico Redondo',
                descripcion: 'Lisandro López es un futbolista] argentino que se desempeña como delantero en el Club Atlético Sarmiento de la Primera División de Argentina.',
                imagen: "redondo.png",
                detalle: 'Argentinos Juniors - Volante - 22/05/2003 - ARG',
                comentarios: [
                    {
                        id: 1,
                        usuario: "Julian",
                        texto:"JUgador joven crack",
                    },
                ]
            },
        {
                id:12,
                nombre: 'Cristian Medina',
                descripcion: 'Cristian Medina es un futbolista] argentino que se desempeña como delantero en el Club Atlético Boca Jrs. de la Primera División de Argentina.',
                imagen: "medina.png",
                detalle: 'Boca Juniors - Volante - 12/12/2001 - ARG',
                comentarios: [
                    {
                        id: 1,
                        usuario: "Julian",
                        texto:"JUgador joven crack",
                    },
                ]
            }
    ],
    delanteros: [
        {
            id:13,
            nombre: 'Darío Benedetto',
            descripcion: 'Darío Ismael "Pipa" Benedetto es un futbolista argentino que juega de Delantero como número 9. Actualmente es propiedad del Club Atlético Boca Juniors de la Liga Profesional de Fútbol Argentino.',
            imagen: "benedetto.png",
            detalle: 'Boca Juniors - Delantero Centro - 17/05/1990 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Sebastián Battaglia",
                    texto:"Excelente jugador el Pipa! Muchisima experiencia y potrero. Lo recomiendo para cualquier club, gran 9",
                },
               {
                    id: 2,
                    usuario: "Gustavo Alfaro",
                    texto:"Un gran referente de plantel y excelente profesional, conmigo siempre se portó de maravilla y respeto" 
                }, 
                {
                    id: 3,
                    usuario: "Guillermo Barros Schelotto",
                    texto:"Tiene un olfato goleador marcado, cuando lo dirigí en 2017 me hizo acordar mucho al mejor Palermo. Es el nuevo ídolo de Boca" 
                }

            ]
        },
        {
            id:14,
            nombre: 'Lisandro Lopez',
            descripcion: 'Lisandro López es un futbolista argentino que se desempeña como delantero en el Club Atlético Sarmiento de la Primera División de Argentina.',
            imagen: "licha.png",
            detalle: 'Sarmiento - Delantero Centro - 02/03/1983 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Julian",
                    texto:"Idolo en Racing. Las gano todas",
                },
            ]
        },
        {
            id:15,
            nombre: 'Mateo Retegui',
            descripcion: 'Mateo Retegui es un futbolista profesional que juega como centrodelantero en el Club Atlético Tigre de la Liga Profesional argentina. Nacido y criado en Argentina de padres argentinos, siendo su abuelo materno italiano, es internacional absoluto con la selección de Italia.',
            imagen: "retegui.png",
            detalle: 'Tigre - Delantero Centro - 07/10/2000 - ITA',
            comentarios: [
                {
                    id: 1,
                    usuario: "Julian",
                    texto:"Hincha de tigre. Nos dio muchas alegrias",
                },
            ]
        },
        {
            id:16,
            nombre: 'Federico Girotti',
            descripcion: 'Federico Girotti es un futbolista profesional argentino que se desempeña en la posición de delantero y actualmente juega en el Club Atlético Talleres de la Primera División de Argentina',
            imagen: "girotti.png",
            detalle: 'Talleres - Delantero - 02/03/1999 - ARG',
            comentarios: [
                {
                    id: 1,
                    usuario: "Julian",
                    texto:"Recien comenzando. Crack total",
                },
            ]
        },
    ]
}
module.exports= productos;