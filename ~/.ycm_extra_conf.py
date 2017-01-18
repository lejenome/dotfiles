import os

flags = [
    '-Wall',
    '-Wextra',
    # '-Werror',
    '-Wno-long-long',
    '-Wno-variadic-macros',
    '-fexceptions',
    '-DNDEBUG',
    '-I',
    '.',
    '-I',
    'include/'
]

SOURCE_EXTENSIONS = ['.cpp', '.cxx', '.cc', '.c', '.m', '.mm']


def FlagsForFile(filename, **kwargs):
    global flags

    ext = os.path.splitext(filename)[1]
    if ext in ['.cpp', '.cxx', '.cc', '.mm', '.hpp']:
        flags += [
            '-std=gnu++1z',
            '-x',
            'c++',
        ]
    else:
        flags += [
            '-std=gnu11',
            '-x',
            'c',
            '-pthread',
            '-I/usr/include/gtk-3.0',
            '-I/usr/include/at-spi2-atk/2.0',
            '-I/usr/include/at-spi-2.0',
            '-I/usr/include/dbus-1.0',
            '-I/usr/lib/dbus-1.0/include',
            '-I/usr/include/gtk-3.0',
            '-I/usr/include/gio-unix-2.0/',
            '-I/usr/include/cairo',
            '-I/usr/include/pango-1.0',
            '-I/usr/include/atk-1.0',
            '-I/usr/include/cairo',
            '-I/usr/include/pixman-1',
            '-I/usr/include/freetype2',
            '-I/usr/include/libpng16',
            '-I/usr/include/harfbuzz',
            '-I/usr/include/freetype2',
            '-I/usr/include/harfbuzz',
            '-I/usr/include/libdrm',
            '-I/usr/include/libpng16',
            '-I/usr/include/gdk-pixbuf-2.0',
            '-I/usr/include/libpng16',
            '-I/usr/include/glib-2.0',
            '-I/usr/lib/glib-2.0/include',
        ]

    return {
        'flags': flags,
        'do_cache': True
    }
