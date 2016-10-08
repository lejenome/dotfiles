import qtconsole.ansi_code_processor
qtconsole.ansi_code_processor.AnsiCodeProcessor.bold_text_enabled = True

c = get_config()

c.JupyterApp.answer_yes = False

c.JupyterQtConsoleApp.display_banner = False

# The font family to use for the console. On OSX this defaults to Monaco, on
# Windows the default is Consolas with fallback of Courier, and on other
# platforms the default is Monospace.
c.ConsoleWidget.font_family = 'Source Code Pro'


# The type of underlying text widget to use. Valid values are 'plain', which
# specifies a QPlainTextEdit, and 'rich', which specifies a QTextEdit.
c.ConsoleWidget.kind = 'rich'

c.JupyterWidget.editor = 'gvim --nofork {filename}'
