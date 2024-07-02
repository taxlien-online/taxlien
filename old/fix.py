import re

def fix_dollar_amounts(input_file_path, output_file_path):
    with open(input_file_path, 'r', encoding='utf-8') as file:
        lines = file.readlines()

    fixed_lines = []
    for line in lines:
        # Используем регулярное выражение для поиска суммы в долларах
        fixed_line = re.sub(r'(\$\d{1,3}(?:,\d{3})*\.\d{2})(?!")', r'"\1"', line)
        fixed_lines.append(fixed_line)

    with open(output_file_path, 'w', encoding='utf-8') as file:
        file.writelines(fixed_lines)

# Укажите путь к вашему исходному файлу и файлу назначения
input_file_path = '2019_Polk_Results.txt'
output_file_path = '2019_Polk_Results_fixed.txt'
fix_dollar_amounts(input_file_path, output_file_path)