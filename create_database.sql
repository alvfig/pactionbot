-- create_database.sql


--DROP DATABASE paction IF EXISTS;
--CREATE DATABASE paction;


--DROP TABLE articles IF EXISTS;
CREATE TABLE articles (
    article_id DECIMAL NOT NULL PRIMARY KEY,
    short TEXT DEFAULT '',
    long TEXT DEFAULT ''
);


--DROP TABLE tags IF EXISTS;
CREATE TABLE tags (
    tag TEXT NOT NULL PRIMARY KEY
);


--DROP TABLE figures IF EXISTS;
CREATE TABLE figures (
    figure_id DECIMAL NOT NULL PRIMARY KEY,
    image BLOB NOT NULL
);


--DROP TABLE articles_tags IF EXISTS;
CREATE TABLE articles_tags (
    article_id DECIMAL NOT NULL,
    tag TEXT NOT NULL,
    CONSTRAINT articles_tags_article_id FOREIGN KEY (article_id) REFERENCES articles(article_id),
    CONSTRAINT articles_tags_tag FOREIGN KEY (tag) REFERENCES tags(tag),
    CONSTRAINT articles_tags_unique UNIQUE (article_id, tag)
);


--DROP TABLE articles_figures IF EXISTS;
CREATE TABLE articles_figures (
    article_id DECIMAL NOT NULL,
    figure_id DECIMAL NOT NULL,
    CONSTRAINT articles_figures_article_id FOREIGN KEY (article_id) REFERENCES articles(article_id),
    CONSTRAINT articles_figures_figure_id FOREIGN KEY (figure_id) REFERENCES figures(figure_id),
    CONSTRAINT articles_figures_unique UNIQUE (article_id, figure_id)
);
