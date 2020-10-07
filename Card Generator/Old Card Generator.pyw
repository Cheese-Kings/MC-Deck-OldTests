# Import Stuff
import PySimpleGUI as sg
import time

# Set Theme
sg.theme('DarkTeal5')

# Variables

# Main Gui Layout
layout1 = [
           [sg.Text("Card Name:"), sg.InputText()],
           [sg.Text("Card ID (000):"), sg.InputText()],
           [sg.Text("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")],
           [sg.Button("Generate Command")],
           [sg.Text("Command Output:")],
           [sg.Output(size=(55,5), key='-OUTPUT-')]
          ]

# Opens Gui
window1 = sg.Window('MCTCG Card Generator - v1.0', layout1)

# Runs when Gui is open
while True:
    event, values = window1.read()
    # Runs when CLOSE is pressed
    if event in (sg.WIN_CLOSED, 'Quit'):
        time.sleep(0.5)
        window1.close()
        break
    if event == 'Generate Command':
        window1['-OUTPUT-'].update('')
        print("give @s minecraft:knowledge_book{CustomModelData:",values[1],"} 1")

# Closes Gui and game
window1.close()