#import pyautogui

# Posição do mouse que você deseja clicar
#pos_x = 958
#pos_y = 578

# Número de cliques desejado
#num_clicks = 1000000


# Loop para clicar várias vezes
#for _ in range(num_clicks):
#    pyautogui.click()

#import time
#import pyautogui

#time.sleep(5)
#print(pyautogui.position())

import pyautogui

# Posição do mouse que você deseja clicar
pos_x = 958
pos_y = 578

# Número de cliques desejado
num_clicks = 20000000000000000000

# Configurações adicionais para otimização
pyautogui.PAUSE = 0  # Reduz o atraso entre as operações do pyautogui
pyautogui.FAILSAFE = False  # Desativa a opção de falha segura, que interrompe o programa se mover o mouse para o canto superior esquerdo
#timesleep(5)
# Loop para clicar várias vezes
for _ in range(num_clicks):
    pyautogui.mouseDown(x=pos_x, y=pos_y)
    pyautogui.mouseUp(x=pos_x, y=pos_y)
