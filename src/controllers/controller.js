const controller = {};

controller.list = (req, res) => {
    console.log('entro');
    req.getConnection((err, conn) => {
        conn.query('SELECT * FROM juegos', (err, data) => {
            return res.send(
                data
            )
        });
    });
};

controller.select = (req, res) => {
    const id = req.params.id;
    if (isNaN(id)) {
        req.getConnection((err, conn) => {
            conn.query(`SELECT * FROM juegos where nombre like "%${id}%"`, (err, data) => {
                return res.send(
                    data
                )
            })
        });
    } else {
        req.getConnection((err, conn) => {
            conn.query('SELECT * FROM juegos where id = ?', [id], (err, data) => {
                return res.send(
                    data
                )
            })
        });
    }
};

controller.create = (req, res) => {
    const data = req.body;
    req.getConnection((err, conn) => {
        conn.query('INSERT INTO juegos set ?', [data], (err, res) => {
        })
    })
}

controller.update = (req, res) => {
    const id = req.params.id;
    const data = req.body;
    req.getConnection((err, conn) => {
        conn.query('UPDATE juegos set ? WHERE id = ?', [data, id], (err, res) => {
        })
    })
}

controller.delete = (req, res) => {
    const id = req.params.id;
    req.getConnection((err, conn) => {
        conn.query('DELETE FROM juegos WHERE id = ?', [id], (err, res) => {
        })
    })
}

module.exports = controller;