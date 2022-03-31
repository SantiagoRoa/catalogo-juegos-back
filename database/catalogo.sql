CREATE DATABASE IF NOT EXISTS `catalogo` DEFAULT CHARACTER SET utf8;

USE `catalogo`;

DROP TABLE IF EXISTS `juegos`;

CREATE TABLE `juegos` (
    `id` int(10) NOT NULL,
    `nombre` varchar(50) NOT NULL,
    `descripcion` varchar(4000) NOT NULL,
    `precio` varchar(50) NOT NULL,
    `calificacion` SMALLINT(5) NOT NULL,
    `lanzamiento` date NOT NULL,
    `imagen` varchar(500) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

insert into
    `juegos`(
        `id`,
        `nombre`,
        `descripcion`,
        `precio`,
        `calificacion`,
        `lanzamiento`,
        `imagen`
    )
values
    (
        1,
        'Dark Souls',
        'Un RPG de acción ambientado en un oscuro mundo de fantasía. Ha sido desarrollado por el estudio japonés From Software, conocido, por ejemplo, por Ninja Blade, Demons Souls y la serie Armored Core. La historia de Dark Souls tiene lugar en un universo sombrío, muy parecido a la época medieval.',
        '$120.000',
        4,
        '2011-11-22',
        'https://cdn.gracza.pl/galeria/gry13/grupy/1093.jpg'
    ),
    (
        2,
        'Grand Theft Auto: San Andreas',
        'La séptima entrega de la controvertida serie Grand Theft Auto, una de las franquicias de juegos más populares de la historia que dio fama internacional a la empresa Rockstar Games.',
        '$80.500',
        4,
        '2004-10-27',
        'https://cdn.gracza.pl/galeria/gry13/grupy/865.jpg'
    ),
    (
        3,
        'Grand Theft Auto IV',
        'La cuarta entrega de la franquicia de juegos de acción más vendida. El título fue desarrollado por Rockstar North Studios bajo la supervisión de Chris Sawyer.',
        '$120.000',
        3,
        '2008-04-29',
        'https://cdn.gracza.pl/galeria/gry13/grupy/1063.jpg'
    ),
    (
        4,
        'Grand Theft Auto V',
        'La quinta entrega principal de la popular serie de juegos de acción desarrollada por Rockstar North en cooperación con Take Two Interactive. Grand Theft Auto V está ambientado en una ciudad ficticia de Los Santos (basada en Los Ángeles).',
        '$99.900',
        5,
        '2013-09-17',
        'https://cdn.gracza.pl/galeria/gry13/grupy/171093171.jpg'
    ),
    (
        5,
        'Halo: Combat Evolved',
        'Halo: Combat Evolved es un juego de disparos FPP/TPP futurista que fue un título de lanzamiento de la consola Xbox y se convirtió en el primer vendedor de sistemas de Microsoft. Fue desarrollado por Bungie Software, un estudio anteriormente conocido por la serie Myth.',
        '$30.000',
        4,
        '2001-11-15',
        'https://cdn.gracza.pl/galeria/gry13/grupy/641.jpg'
    ),
    (
        6,
        'Halo 2',
        'Una secuela de la exitosa franquicia de disparos de Bungie Software, que debutó en 2001 como uno de los títulos de lanzamiento de la consola Xbox.',
        '$47.200',
        5,
        '2004-11-08',
        'https://cdn.gracza.pl/galeria/gry13/grupy/2436.jpg'
    ),
    (
        7,
        'Minecraft',
        'Un juego sandbox que desafía la clasificación, desarrollado por el estudio independiente Mojang AB. Minecraft se ha desarrollado con la intención de dar rienda suelta a la creatividad de los jugadores, que pueden cambiar libremente el mundo virtual del juego hecho de vóxeles (bloques cúbicos).',
        '$60.900',
        3,
        '2011-11-18',
        'https://cdn.gracza.pl/galeria/gry13/grupy/1618.jpg'
    ),
    (
        8,
        'The Elder Scrolls V: Skyrim',
        'Un juego de rol de acción heroico y la quinta entrega principal de la popular franquicia The Elder Scrolls. Bethesda Softworks lleva una vez más a los jugadores al continente de fantasía de Tamriel.',
        '$155.900',
        5,
        '2011-11-11',
        'https://cdn.gracza.pl/galeria/gry13/grupy/573.jpg'
    ),
    (
        9,
        'The Witcher 3: Wild Hunt',
        'Un juego de rol de acción y el tercer capítulo de las aventuras de un cazador de monstruos moralmente inequívoco, Geralt de Rivia. Como eran las partes del ciclo, The Witcher 3: Wild Hunt se basa en la obra literaria de Andrzej Sapkowski, si bien no es una adaptación directa de ninguno de sus libros.',
        '$150.000',
        5,
        '2015-05-19',
        'https://cdn.gracza.pl/galeria_gp/gry13/group/510779015.jpg'
    ),
    (
        10,
        'Warcraft III: Frozen Throne',
        'Un paquete de expansión oficial para la tercera entrega de la serie de juegos clásicos de estrategia en tiempo real ambientados en un mundo de fantasía y desarrollado por Blizzard Entertainment desde 1994. La historia de la expansión se desarrolla en el mundo de Azeroth, varios meses después de la batalla por el monte Hyjal.',
        '$57.000',
        3,
        '2003-06-01',
        'https://cdn.gracza.pl/galeria/gry13/1585508563d.jpg'
    )