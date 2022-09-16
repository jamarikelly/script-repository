import os
from pydoc import describe
import requests 
import json
import csv
import ast

cityName = input ("Enter name of city you wish to see weather about. ")
API_Key = "41d6f176ac2bb4a18c9e45f449da65ec"

url = "https://api.openweathermap.org/data/2.5/weather?q="+cityName+"&appid="+API_Key

api_info = requests.get(url)
api_data = api_info.json()

description = api_data['weather'][0]['description']
name = api_data['name']
country = api_data['sys']['country']
temperature = api_data['main']['temp']
hum = api_data['main']['humidity']
pres = api_data['main']['pressure']

json_data = json.dumps(api_data, indent=4)
with open ('json_data.json', 'w') as f:
    
    f.write((json_data))

with open('json_data.json') as json_file:
    
    rain = json.load(json_file)

fname = "output.csv"

with  open(fname, 'w') as json_file: 

   csv_file = csv.writer(json_file)
   csv_file.writerow(["name", "description", "country", "pressure", "temp", "humidity"])
    
   csv_file.writerow([name, description, country, pres, temperature, hum])

        
