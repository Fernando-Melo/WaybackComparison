from glob import glob
import json

ids = glob("./ids/1/*")

listofIDS = open("./IdListPyWb1.txt", "w")


for i in range(0, len(ids)):
	with open(ids[i]) as data_file:
		data_json = json.load(data_file)
	listofIDS.write(data_json['data']['testId'] + "\n")
listofIDS.close()		
