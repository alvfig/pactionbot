#!/usr/bin/python3

import sys
from bs4 import BeautifulSoup


def main(filename):
    with open(filename, 'rb') as f:
        content = f.read()
    bs = BeautifulSoup(content, 'html5lib')
    tables = bs.find_all('table')
    for table in tables:
        tablefirstrow = table.find('tr')
        if tablefirstrow:
            tableheaders = tablefirstrow.find_all('th')
            isTheTable = tableheaders and len(tableheaders) == 2 and \
                tableheaders[0].get_text() == 'Abbreviation' and \
                tableheaders[1].get_text() == 'Description'
            if isTheTable:
                for tablerow in table.find_all('tr'):
                    columns = tablerow.find_all('td') or tablerow.find_all('th')
                    if len(columns) == 2:
                        print('{}|{}'.format(columns[0].get_text(), columns[1].get_text()))
                break


if __name__ == '__main__':
    filename = 'acronyms.html'
    if len(sys.argv) == 2:
        filename = sys.argv[1]
    main(filename)
