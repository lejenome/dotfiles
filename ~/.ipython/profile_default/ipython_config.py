c = get_config()

# c.TerminalInteractiveShell.autocall = 1
c.TerminalInteractiveShell.automagic = True
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.display_completions = 'multicolumn'
c.TerminalInteractiveShell.editing_mode = 'vi'
c.TerminalInteractiveShell.enable_html_pager = True
c.TerminalInteractiveShell.highlight_matching_brackets = True
c.TerminalInteractiveShell.sphinxify_docstring = True

c.TerminalInteractiveShell.mouse_support = True

# c.TerminalInteractiveShell.prompts_class.prompt_in1 = r'\u@ \# >> '
# c.TerminalInteractiveShell.prompts_class.prompt_in1 = r'{color.LightGreen}\u@\h{color.LightBlue}[{color.LightCyan}\Y1{color.LightBlue}]{color.Green}|\#> '
# c.TerminalInteractiveShell.prompts_class.prompt_in2 = r'{color.Green}|{color.LightGreen}\D{color.Green}> '
# c.TerminalInteractiveShell.prompts_class.prompt_out = r'<\#> '
c.HistoryManager.db_cache_size = 50

# c.TerminalInteractiveShell.banner1 = ''
# c.TerminalInteractiveShell.banner2 = ''
c.TerminalIPythonApp.display_banner = False

c.TerminalInteractiveShell.display_page = True
c.TerminalInteractiveShell.highlighting_style = 'native'

c.InteractiveShellApp.exec_lines = ["""
%rehashx
"""]
