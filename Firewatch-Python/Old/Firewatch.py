import pandas as pd
import numpy as np

data = pd.read_excel (r'TestData.xlsx') 
temp = pd.DataFrame(data, columns= ['Temperature']) #, 'Moisture', 'Season', 'Heatwave', 'Wildfire'])
moisture = pd.DataFrame(data, columns=['Moisture'])
season = pd.DataFrame(data, columns=['Season'])
heatwave = pd.DataFrame(data, columns=['Heatwave'])
wildfire = pd.DataFrame(data, columns=['Wildfire'])
print(temp, moisture, season, heatwave, wildfire, sep="\n")


