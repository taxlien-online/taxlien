import csv
import re
import sys
import csv
from io import StringIO

def split_line(line):
    f = StringIO(line)
    reader = csv.reader(f, skipinitialspace=True)
    for row in reader:
        return row
        
        
def split_line2(line):
    # Удаляем кавычки по краям элементов и разделяем по запятой
    line_data = re.split(r',\s*(?![^"]*"\s*,)', line)
    line_data = [item.strip('\"') for item in line_data]
    return line_data

def is_header(line, known_headers):
    # Проверяем, содержит ли строка ключевые слова из заголовков
    return any(header.lower() in line.lower() for header in known_headers)
    
def read_and_process_file(input_filepath, output_filepath):
    # Словарь сопоставления названий столбцов
    column_mappings = {
        'ADVNUM': ['ADVNUM', 'Advertising_Number', 'adv_num'],
        'CERTIFICATE NUMBER': ['CERTIFICATE NUMBER', 'Certificate_Number', 'certificate_number'],
        'PARCEL': ['PARCEL', 'Parcel_ID', 'folio','Folio2'],
        'WINNINGBID': ['WINNINGBID', 'Winning_Bid', 'winning_bid'],
        'FACE AMOUNT': ['FACE AMOUNT', 'Face_Value', 'adv_amt'],
        'BIDDER ID': ['BIDDER ID', 'Winning_Bidder_Number', 'user_id','Primary','Winning_Bidder'], #Primary_Account'
        'PRIMARY NAME ON ACCOUNT': ['PRIMARY NAME ON ACCOUNT', 'name', 'Name','Winner']
    }

    # Прямое сопоставление для быстрого доступа, переводим все в нижний регистр
    header_translation = {}
    for standard_header, variants in column_mappings.items():
        for variant in variants:
            header_translation[variant.lower()] = standard_header

    # Чтение файла
    #with open(input_filepath, 'r', encoding='utf-8') as file:
    with open(input_filepath, 'r', encoding='cp1252') as file:
        lines = file.readlines()

    # Анализ заголовков, учитывая регистронезависимость
    headers = [header.strip().lower() for header in lines[0].split(',')]
    #standardized_headers = [header_translation.get(header, '') for header in headers]
    if is_header(lines[0], header_translation.keys()):
        standardized_headers = [header_translation.get(header, '') for header in headers]
        data_start_index = 1
    else:
        # Устанавливаем порядок столбцов, если в первой строке оказались данные
        standardized_headers = ['ADVNUM', 'CERTIFICATE NUMBER', 'PARCEL', 'WINNINGBID', 'FACE AMOUNT', 'BIDDER ID', 'PRIMARY NAME ON ACCOUNT']
        data_start_index = 0

    # Формирование выходного файла
    with open(output_filepath, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        
        # Записываем заголовки из словаря сопоставления, обеспечивая наличие всех колонок
        output_headers = [header for header in column_mappings]
        writer.writerow(output_headers)

        # Обработка каждой строки
        for line in lines[1:]:
            line = re.sub(r'\$(\d+),(\d+\.\d+)', r'$\1\2', line)
            line = re.sub(r', LLC', ' LLC', line)
            line = re.sub(r', INC', ' INC', line)
            line = re.sub(r'  ', ' ', line)

            #line_data = line.split(',')
            line_data = split_line(line)

            row = []
            for header in output_headers:
                if header in standardized_headers:
                    index = standardized_headers.index(header)
                    value = line_data[index].strip() if index < len(line_data) else ''
                    row.append(value)
                else:
                    row.append('NULL')  # Добавляем пустую строку для отсутствующих колонок
            writer.writerow(row)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python script.py input_path output_path")
    else:
        input_path = sys.argv[1]
        output_path = sys.argv[2]
        read_and_process_file(input_path, output_path)
