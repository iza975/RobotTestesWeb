from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager

# Inicia o ChromeDriver automaticamente com a versão correta
driver = webdriver.Chrome(ChromeDriverManager().install())
driver.get("https://www.google.com")
