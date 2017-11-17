from IPython.terminal.prompts import Prompts, Token
import os

c = get_config()

# c.TerminalInteractiveShell.autocall = 1
c.TerminalInteractiveShell.automagic = True
c.TerminalInteractiveShell.confirm_exit = False
c.TerminalInteractiveShell.display_completions = 'multicolumn'
c.TerminalInteractiveShell.editing_mode = 'vi'
# c.InteractiveShell.editor = 'vim'
c.TerminalInteractiveShell.enable_html_pager = True
c.TerminalInteractiveShell.highlight_matching_brackets = True
c.TerminalInteractiveShell.sphinxify_docstring = True

c.TerminalInteractiveShell.mouse_support = True


c.HistoryManager.db_cache_size = 50

c.TerminalIPythonApp.display_banner = False

c.TerminalInteractiveShell.display_page = True
c.TerminalInteractiveShell.highlighting_style = 'native'

class ShellPrompt(Prompts):

    def in_prompt_tokens(self, cli=None):
        return [
            (Token.Prompt, '['),
            (Token, os.environ["USER"]),
            (Token.Prompt, ' : '),
            (Token, os.getcwd()),
            (Token.Prompt, ']\n'),
            (Token.PromptNum, str(self.shell.execution_count)),
            (Token.Prompt, ' > ')]
c.TerminalInteractiveShell.prompts_class = ShellPrompt

c.InteractiveShellApp.exec_lines = [
    "%rehashx",
    "import sys",
    "import os",
]
