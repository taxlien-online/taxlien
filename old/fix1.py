import pandas as pd
import csv
import re
import sys

def process_csv_from_command_line():
    """ Обрабатывает CSV файлы, принимая пути входного и выходного файла из аргументов командной строки. """
    if len(sys.argv) != 3:
        print("Usage: python script_name.py <input_file> <output_file>")
        return
    
    input_file, output_file = sys.argv[1], sys.argv[2]
    
    try:
        df = pd.read_csv(input_file)
        df = standardize_headers(df)
        df = preprocess_data_improved(df)
        df.to_csv(output_file, index=False, quoting=csv.QUOTE_NONE)
        print(f"File processed successfully: '{input_file}' to '{output_file}'")
    except Exception as e:
        print(f"An error occurred: {e}")


# Словарь сопоставления для различных наименований столбцов
column_mappings = {
    'ADVNUM': ['ADVNUM', 'Advertising_Number', 'adv_num'],
    'CERTIFICATE NUMBER': ['CERTIFICATE NUMBER', 'Certificate_Number', 'certificate_number'],
    'PARCEL': ['PARCEL', 'Parcel_ID', 'folio'],
    'WINNINGBID': ['WINNINGBID', 'Winning_Bid', 'winning_bid'],
    'FACE AMOUNT': ['FACE AMOUNT', 'Face_Value', 'adv_amt'],
    'BIDDER ID': ['BIDDER ID', 'Winning_Bidder_Number', 'user_id'],
    'PRIMARY NAME ON ACCOUNT': ['PRIMARY NAME ON ACCOUNT', 'Primary_Account', 'name']
}

def standardize_headers(df):
    """ Стандартизирует заголовки с использованием предопределенного словаря сопоставлений. """
    standardized_headers = {}
    for standard, variations in column_mappings.items():
        for variation in variations:
            for existing in df.columns:
                if existing.lower() == variation.lower():
                    standardized_headers[existing] = standard
    return df.rename(columns=standardized_headers)

def preprocess_data_improved(df):
    """ Производит предварительную обработку данных с улучшенной обработкой денежных сумм. """
    df = df.applymap(lambda x: re.sub(r'\.$', '', str(x)))  # Удаление точек в конце строк
    df = df.applymap(lambda x: x.replace(", LLC", " LLC"))  # Замена ", LLC" на " LLC"
    df = df.applymap(lambda x: x.replace(", INC", " INC"))  # Замена ", INC" на " INC"
    
    # Обертывание всех полей в кавычки и обработка денежных значений
    df = df.applymap(lambda x: f'"{x}"' if ',' in x or not x.replace('.', '', 1).isdigit() else x)
    return df

def process_csv_improved(input_file, output_file):
    """ Читает CSV, стандартизирует и записывает обратно в новый CSV с улучшенной обработкой денежных сумм. """
    df = pd.read_csv(input_file)
    df = standardize_headers(df)
    df = preprocess_data_improved(df)
    df.to_csv(output_file, index=False, quoting=csv.QUOTE_NONE)

# Эта улучшенная версия функции будет учитывать корректную обработку денежных сумм.
# Пример использования: process_csv_improved('input.csv', 'output.csv')
process_csv_from_command_line()