c = get_config()

c.TerminalInteractiveShell.autocall = 1
c.TerminalInteractiveShell.automagic = True
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.banner1 = ''
# c.TerminalInteractiveShell.readline_parse_and_bind

c.PromptManager.in_template = r'\u@ \# >> '
c.PromptManager.in_template = r'{color.LightGreen}\u@\h{color.LightBlue}[{color.LightCyan}\Y1{color.LightBlue}]{color.Green}|\#> '
c.PromptManager.in2_template = r'{color.Green}|{color.LightGreen}\D{color.Green}> '
c.PromptManager.out_template = r'<\#> '
c.HistoryManager.db_cache_size = 50

c.InteractiveShellApp.exec_lines = ["""
%rehashx
"""]
