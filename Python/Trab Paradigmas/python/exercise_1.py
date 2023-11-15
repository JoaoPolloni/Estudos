import re

def regex(pattern, string):
    capt = re.match(pattern, string)
    if bool(capt):
        return capt.group()
    return False

def verificar_ips_em_arquivo(caminho_arquivo):

    with open(caminho_arquivo, 'r') as arquivo:
        for linha in arquivo:
            ip = linha.strip()
            if ip == '0.0.0.0':
                print(ip + ' ip valido')
            elif regex('^(([1-9]\.|[1-9][0-9]\.|1[0-9][0-9]\.|2[0-4][0-9]\.|25[0-5]\.)([0-9]\.|[1-9][0-9]\.|1[0-9][0-9]\.|2[0-4][0-9]\.|25[0-5]\.)([0-9]\.|[1-9][0-9]\.|1[0-9][0-9]\.|2[0-4][0-9]\.|25[0-5]\.)([0-9]\.|[1-9][0-9]\.|1[0-9][0-9]\.|2[0-4][0-9]\.|25[0-5]\.))$', ip + '.'):
                print(ip + ' ip valido')
            else:
                print(ip + ' ip invalido')

verificar_ips_em_arquivo(r'ip.txt')