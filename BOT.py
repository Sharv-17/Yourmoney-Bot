import requests
from bs4 import BeautifulSoup
from random import choice
from selenium import webdriver
from time import sleep
def adbot():
    firefox_options = webdriver.FirefoxOptions()
    firefox = webdriver.Firefox(options=firefox_options)
    firefox.get("Your_url")
    sleep(10)
    firefox.find_element_by_xpath('// *[ @ id = "skip_bu2tton"]').click()
    exec 
adbot()
