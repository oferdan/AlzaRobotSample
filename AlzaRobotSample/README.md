# AlzaRobotsample ![CI status](https://img.shields.io/badge/build-passing-brightgreen.svg)

AlzaNGsample is my sample test automation project that demonstrates what I've learned using Robot Framework. Test are for Czech ecommerce site Alza.cz.
More tests, features and refactoring to come.

The most information comes from:
* https://www.udemy.com/robot-framework-2/learn/v4/content


## Features

Project is using:
* Robot Framework
* Keywords
* Page Object design pattern
* Selenium Library
* Jenkins can be used for Continuous Integration


## Running tests

### Requirements
* Python 3 - https://www.python.org/downloads/
* Robot Framework - https://pypi.org/project/robotframework/

### Usage
Clone project from GitHub and run commands in project root. Run with commands belov or with Red plugin for Eclipse.
```
$ git clone git@github.com:oferdan/alzangsample.git
$ robot -d Results Tests
```


## License

[The Unlicense](https://choosealicense.com/licenses/unlicense/)