from setuptools import setup, find_packages

setup(
    name='apiverve_jsonschemavalidator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='JSON Schema Validator is a JSON validator API that tests any JSON object against a JSON Schema you provide, so you can check JSON against its schema before trusting it. It reports pass-fail status and total error count, while paid plans add specific error messages.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/jsonschemavalidator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
