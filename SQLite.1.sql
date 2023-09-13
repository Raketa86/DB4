-- Создание таблицы СМЕНА
CREATE TABLE СМЕНА (
  id INT PRIMARY KEY,
  название VARCHAR(50)
);

-- Создание таблицы БАРИСТА
CREATE TABLE БАРИСТА (
  id INT PRIMARY KEY,
  имя VARCHAR(50)
);

-- Создание таблицы КОФЕ
CREATE TABLE КОФЕ (
  id INT PRIMARY KEY,
  название VARCHAR(50)
);

-- Создание таблицы ЗАКАЗ
CREATE TABLE ЗАКАЗ (
  id INT PRIMARY KEY,
  id_смены INT,
  id_баристы INT,
  id_кофе INT,
  FOREIGN KEY (id_смены) REFERENCES СМЕНА(id),
  FOREIGN KEY (id_баристы) REFERENCES БАРИСТА(id),
  FOREIGN KEY (id_кофе) REFERENCES КОФЕ(id)
);

-- Вставка записей в таблицу СМЕНА
INSERT INTO СМЕНА (id, название) VALUES (1, 'Утренняя смена');
INSERT INTO СМЕНА (id, название) VALUES (2, 'Дневная смена');
INSERT INTO СМЕНА (id, название) VALUES (3, 'Вечерняя смена');

-- Вставка записей в таблицу БАРИСТА
INSERT INTO БАРИСТА (id, имя) VALUES (1, 'Алексей');
INSERT INTO БАРИСТА (id, имя) VALUES (2, 'Екатерина');
INSERT INTO БАРИСТА (id, имя) VALUES (3, 'Михаил');

-- Вставка записей в таблицу КОФЕ
INSERT INTO КОФЕ (id, название) VALUES (1, 'Американо');
INSERT INTO КОФЕ (id, название) VALUES (2, 'Капуччино');
INSERT INTO КОФЕ (id, название) VALUES (3, 'Латте');

-- Вставка записей в таблицу ЗАКАЗ
INSERT INTO ЗАКАЗ (id, id_смены, id_баристы, id_кофе) VALUES (1, 1, 3, 2);
INSERT INTO ЗАКАЗ (id, id_смены, id_баристы, id_кофе) VALUES (2, 2, 2, 1);
INSERT INTO ЗАКАЗ (id, id_смены, id_баристы, id_кофе) VALUES (3, 3, 1, 3);