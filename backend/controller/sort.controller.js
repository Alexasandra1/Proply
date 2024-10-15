const db = require('../db');
class SortController {
    // Функция для получения всех объектов без фильтров
async getAllObjects(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object"');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функция для получения всех объектов, отсортированных по цене в порядке возрастания
async getAllObjectsAsc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функция для получения всех объектов, отсортированных по цене в порядке убывания
async getAllObjectsDesc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 2
async getObjectsWithState2(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 3
async getObjectsWithState3(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с type_id = 2
async getObjectsWithType2(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 2');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithType2Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 2 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithType2Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 2 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с type_id = 3
async getObjectsWithType3(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 3');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithType3Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 3 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithType3Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 3 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с type_id = 4
async getObjectsWithType4(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 4');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithType4Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 4 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithType4Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE type_id = 4 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType2(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 2');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType2Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 2 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType2Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 2 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 2 и type_id = 3
async getObjectsWithState2AndType3(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 3');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType3Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 3 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType3Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 3 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 2 и type_id = 4
async getObjectsWithState2AndType4(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 4');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType4Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 4 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState2AndType4Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 2 AND type_id = 4 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 3 и type_id = 2
async getObjectsWithState3AndType2(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 2');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3AndType2Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 2 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3AndType2Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 2 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 3 и type_id = 3
async getObjectsWithState3AndType3(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 3');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3AndType3Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 3 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3AndType3Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 3 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

// Функции для объектов с state = 3 и type_id = 4
async getObjectsWithState3AndType4(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 4');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3AndType4Asc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 4 ORDER BY price ASC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}

async getObjectsWithState3AndType4Desc(req, res) {
    try {
        const objects = await db.query('SELECT * FROM "Reale_estate_object" WHERE state = 3 AND type_id = 4 ORDER BY price DESC');
        res.json(objects.rows);
    } catch (err) {
        console.error(err);
        res.status(500).json({error: 'Произошла ошибка сервера'});
    }
}
}

module.exports = new SortController();