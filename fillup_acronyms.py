#!/usr/bin/python3

import sqlite3
import xtract_acronyms


def insert_entry_on_db(db, tag, description):
    dbcursor = db.cursor()
    dbcursor.execute('SELECT COUNT(tag) AS qty FROM tags WHERE tag = ?', (tag, ))
    qty = dbcursor.fetchone()[0]
    if qty < 1:
        dbcursor.execute('SELECT COUNT(*) + 1 AS new_id FROM articles')
        new_id = dbcursor.fetchone()[0]
        print(new_id, tag)

        dbcursor.execute('INSERT INTO tags VALUES (?)', (tag, ))
        dbcursor.execute('INSERT INTO articles (article_id, short) VALUES (?, ?)', (new_id, description))
        dbcursor.execute('INSERT INTO articles_tags VALUES(?, ?)', (new_id, tag))
        db.commit()


def main():
    db = sqlite3.connect('pactionbot.db')
    try:
        filename = 'acronyms.html'
        with open(filename, 'rb') as f:
            content = f.read()

        lines = iter(xtract_acronyms.xtract(content))
        next(lines) # Discard the header
        for line in lines:
            tag, description = line.split('|')
            insert_entry_on_db(db, tag, description)
    finally:
        db.close()


if __name__ == '__main__':
    main()
