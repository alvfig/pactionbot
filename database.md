# Database

## Table `Articles`
- `id` Decimal Primary Key
- `short` Text
- `long` Text

## Table `Tags`
- `tag` String Primary Key

## Table `Articles` VS `Tags`
- `article_id` Decimal Foreign Key `Articles`
- `tag` String Foreign Key `Tags`
- `article_id` + `tag` Primary Key

## Table `Figures`
- `id` Decimal Primary Key
- `image` Blob

## Table `Articles` VS `Figures`
- `article_id` Decimal Foreign Key `Articles`
- `figure_id` Decimal Foreign Key `Figures`
- `article_id` + `figure_id` Primary Key
