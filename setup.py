from setuptools import setup, find_packages

setup(
    name='eka_proto',
    version='1.0',
    author="nikhil",
    author_email="ds.tools@eka.care",
    description="eka proto contracts",
    url="https://github.com/eka-care/proto-contracts",
    include_package_data=True,
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "Operating System :: OS Independent",
    ],
)
