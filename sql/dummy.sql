-- Buat tabel articles
CREATE TABLE articles (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    published_at TIMESTAMP NOT NULL,
    author_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);

-- Masukkan dummy data
INSERT INTO articles (title, content, published_at, author_id, created_at, updated_at, deleted_at)
VALUES 
-- Batch 1: Artikel dari tahun 2016
('Article 1', 'Content of article 1', '2016-01-01 10:00:00', 1, '2016-01-01 09:00:00', '2016-01-01 09:00:00', NULL),
('Article 2', 'Content of article 2', '2016-02-01 12:00:00', 2, '2016-02-01 11:00:00', '2016-02-01 11:00:00', NULL),
('Article 3', 'Content of article 3', '2016-03-01 14:00:00', 3, '2016-03-01 13:00:00', '2016-03-01 13:00:00', NULL),
('Article 4', 'Content of article 4', '2016-04-01 16:00:00', 4, '2016-04-01 15:00:00', '2016-04-01 15:00:00', NULL),
('Article 5', 'Content of article 5', '2016-05-01 18:00:00', 5, '2016-05-01 17:00:00', '2016-05-01 17:00:00', NULL),

-- Batch 2: Artikel dari tahun 2017
('Article 6', 'Content of article 6', '2017-01-01 10:00:00', 1, '2017-01-01 09:00:00', '2017-01-01 09:00:00', NULL),
('Article 7', 'Content of article 7', '2017-02-01 12:00:00', 2, '2017-02-01 11:00:00', '2017-02-01 11:00:00', NULL),
('Article 8', 'Content of article 8', '2017-03-01 14:00:00', 3, '2017-03-01 13:00:00', '2017-03-01 13:00:00', NULL),
('Article 9', 'Content of article 9', '2017-04-01 16:00:00', 4, '2017-04-01 15:00:00', '2017-04-01 15:00:00', NULL),
('Article 10', 'Content of article 10', '2017-05-01 18:00:00', 5, '2017-05-01 17:00:00', '2017-05-01 17:00:00', NULL),

-- Batch 3: Artikel dari tahun 2018
('Article 11', 'Content of article 11', '2018-01-01 10:00:00', 1, '2018-01-01 09:00:00', '2018-01-01 09:00:00', NULL),
('Article 12', 'Content of article 12', '2018-02-01 12:00:00', 2, '2018-02-01 11:00:00', '2018-02-01 11:00:00', NULL),
('Article 13', 'Content of article 13', '2018-03-01 14:00:00', 3, '2018-03-01 13:00:00', '2018-03-01 13:00:00', NULL),
('Article 14', 'Content of article 14', '2018-04-01 16:00:00', 4, '2018-04-01 15:00:00', '2018-04-01 15:00:00', NULL),
('Article 15', 'Content of article 15', '2018-05-01 18:00:00', 5, '2018-05-01 17:00:00', '2018-05-01 17:00:00', NULL),

-- Batch 4: Artikel dari tahun 2019
('Article 16', 'Content of article 16', '2019-01-01 10:00:00', 1, '2019-01-01 09:00:00', '2019-01-01 09:00:00', NULL),
('Article 17', 'Content of article 17', '2019-02-01 12:00:00', 2, '2019-02-01 11:00:00', '2019-02-01 11:00:00', NULL),
('Article 18', 'Content of article 18', '2019-03-01 14:00:00', 3, '2019-03-01 13:00:00', '2019-03-01 13:00:00', NULL),
('Article 19', 'Content of article 19', '2019-04-01 16:00:00', 4, '2019-04-01 15:00:00', '2019-04-01 15:00:00', NULL),
('Article 20', 'Content of article 20', '2019-05-01 18:00:00', 5, '2019-05-01 17:00:00', '2019-05-01 17:00:00', NULL),

-- Batch 5: Artikel dari tahun 2020
('Article 21', 'Content of article 21', '2020-01-01 10:00:00', 1, '2020-01-01 09:00:00', '2020-01-01 09:00:00', NULL),
('Article 22', 'Content of article 22', '2020-02-01 12:00:00', 2, '2020-02-01 11:00:00', '2020-02-01 11:00:00', NULL),
('Article 23', 'Content of article 23', '2020-03-01 14:00:00', 3, '2020-03-01 13:00:00', '2020-03-01 13:00:00', NULL),
('Article 24', 'Content of article 24', '2020-04-01 16:00:00', 4, '2020-04-01 15:00:00', '2020-04-01 15:00:00', NULL),
('Article 25', 'Content of article 25', '2020-05-01 18:00:00', 5, '2020-05-01 17:00:00', '2020-05-01 17:00:00', NULL),

-- Batch 6: Artikel dari tahun 2021
('Article 26', 'Content of article 26', '2021-01-01 10:00:00', 1, '2021-01-01 09:00:00', '2021-01-01 09:00:00', NULL),
('Article 27', 'Content of article 27', '2021-02-01 12:00:00', 2, '2021-02-01 11:00:00', '2021-02-01 11:00:00', NULL),
('Article 28', 'Content of article 28', '2021-03-01 14:00:00', 3, '2021-03-01 13:00:00', '2021-03-01 13:00:00', NULL),
('Article 29', 'Content of article 29', '2021-04-01 16:00:00', 4, '2021-04-01 15:00:00', '2021-04-01 15:00:00', NULL),
('Article 30', 'Content of article 30', '2021-05-01 18:00:00', 5, '2021-05-01 17:00:00', '2021-05-01 17:00:00', NULL),

-- Batch 7: Artikel dari tahun 2022
('Article 31', 'Content of article 31', '2022-01-01 10:00:00', 1, '2022-01-01 09:00:00', '2022-01-01 09:00:00', NULL),
('Article 32', 'Content of article 32', '2022-02-01 12:00:00', 2, '2022-02-01 11:00:00', '2022-02-01 11:00:00', NULL),
('Article 33', 'Content of article 33', '2022-03-01 14:00:00', 3, '2022-03-01 13:00:00', '2022-03-01 13:00:00', NULL),
('Article 34', 'Content of article 34', '2022-04-01 16:00:00', 4, '2022-04-01 15:00:00', '2022-04-01 15:00:00', NULL),
('Article 35', 'Content of article 35', '2022-05-01 18:00:00', 5, '2022-05-01 17:00:00', '2022-05-01 17:00:00', NULL),

-- Batch 8: Artikel dari tahun 2023
('Article 36', 'Content of article 36', '2023-01-01 10:00:00', 1, '2023-01-01 09:00:00', '2023-01-01 09:00:00', NULL),
('Article 37', 'Content of article 37', '2023-02-01 12:00:00', 2, '2023-02-01 11:00:00', '2023-02-01 11:00:00', NULL),
('Article 38', 'Content of article 38', '2023-03-01 14:00:00', 3, '2023-03-01 13:00:00', '2023-03-01 13:00:00', NULL),
('Article 39', 'Content of article 39', '2023-04-01 16:00:00', 4, '2023-04-01 15:00:00', '2023-04-01 15:00:00', NULL),
('Article 40', 'Content of article 40', '2023-05-01 18:00:00', 5, '2023-05-01 17:00:00', '2023-05-01 17:00:00', NULL);