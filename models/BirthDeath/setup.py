from distutils.core import setup, Extension
from glob import glob
from numpy import get_include

numpyPath = get_include()

module1 = Extension('BirthDeathLNA',
                    define_macros = [('MAJOR_VERSION', '1'),
                                     ('MINOR_VERSION', '0')],
                    include_dirs = ['/usr/local/include', '/opt/local/Library/Frameworks/Python.framework/Versions/3.4/include/python3.4m/', 'BirthDeath/C', \
					'/opt/local/Library/Frameworks/Python.framework/Versions/3.4/lib/python3.4/site-packages/numpy/core/include/', '../include', '../src', numpyPath],
                    libraries = ['stdc++', 'sundials_cvodes', 'blitz', 'sundials_nvecserial'], #,'python3.4'],
                    library_dirs = ['/usr/local/lib', '/usr/lib/x86_64-linux-gnu/'],
                    sources = ['../src/computeLinearNoise.cpp', 'BirthDeath/BirthDeath_LNA.cpp']\
						+ glob('BirthDeath/C/*.c'), 
					runtime_library_dirs=['/usr/local/lib'])
					

setup(name = 'BirthDeathLNA',
       version = '1.0',
       description = '',
       author = 'Justin Feigelman',
       author_email = 'justin.feigelman@helmholtz-muenchen.de',
       url = '',
       long_description='',
       ext_modules = [module1])

