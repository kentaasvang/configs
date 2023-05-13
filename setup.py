#!/usr/bin/python3

try:
	from simple_term_menu import TerminalMenu
except Exception:
	print("You must run command 'pip3 install simple-term-menu' to run this script")
	exit(1)

from os import listdir
from os.path import isfile, join
import subprocess

def main():
	scripts_path = "./scripts"
	scripts = [f for f in listdir(scripts_path)]
	scripts.append("exit")
	terminal_menu = TerminalMenu(scripts)
	menu_entry_index = terminal_menu.show()

	if scripts[menu_entry_index] == "exit":
		exit(0)

	script_to_run = join(scripts_path, scripts[menu_entry_index]) 
	command = f"bash {script_to_run}"

	subprocess.call(command, shell=True)
	

if __name__ == "__main__":
	main()
