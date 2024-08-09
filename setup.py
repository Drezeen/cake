from setuptools import setup, find_packages

setup(
    name='inventorySystem',
    version='0.1.0',
    description='A Django project',
    author='andy',
    author_email='fxtraderkampala@gmail.com',
    license='MIT',
    packages=find_packages(),
    install_requires=[
        'Django>=4.0',
        'psycopg2-binary>=2.9',  # Example for PostgreSQL
        'djangorestframework>=3.14',  # Example for Django REST Framework
    ],
    classifiers=[
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.9',
        'Framework :: Django',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
