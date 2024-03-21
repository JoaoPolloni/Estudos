# import pyautogui

# #Posição do mouse que você deseja clicar
# pos_x = 958
# pos_y = 578

# #Número de cliques desejado
# num_clicks = 800000


# #Loop para clicar várias vezes
# for _ in range(num_clicks):
#    pyautogui.click()
#////////////////////////////////////////////////////////////////
# import time
# import pyautogui

# time.sleep(5)
# print(pyautogui.position())
#////////////////////////////////////////////////////////////////
# import pyautogui

# # Posição do mouse que você deseja clicar
# pos_x = 958
# pos_y = 578

# # Número de cliques desejado
# num_clicks = 25000000

# # Configurações adicionais para otimização
# pyautogui.PAUSE = 0  # Reduz o atraso entre as operações do pyautogui
# pyautogui.FAILSAFE = False  # Desativa a opção de falha segura, que interrompe o programa se mover o mouse para o canto superior esquerdo
# #timesleep(5)
# # Loop para clicar várias vezes
# for _ in range(num_clicks):
#     pyautogui.mouseDown(x=pos_x, y=pos_y)
#     pyautogui.mouseUp(x=pos_x, y=pos_y)
import pyautogui
import keyboard  # Importe o módulo keyboard para detectar eventos de teclado

# Posição do mouse que você deseja clicar
pos_x = 958
pos_y = 578

# Número de cliques desejado
num_clicks = 25000000

# Defina o intervalo de tempo entre os cliques (em segundos)
# intervalo_entre_cliques = 0.001  # Por exemplo, 0.01 segundos para um intervalo de 10 milissegundos

# Loop para clicar várias vezes
for _ in range(num_clicks):
    pyautogui.click()
    
    # Verifique se a tecla 'q' foi pressionada para encerrar o loop
    if keyboard.is_pressed('q'):
        print("Loop encerrado pelo usuário.")
        break
