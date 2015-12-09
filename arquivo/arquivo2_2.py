from glob import glob
import json

ids = glob("./ids/2/*")

listofIDS = open("./IdListArquivo2.txt", "w")


for i in range(0, len(ids)):
	with open(ids[i]) as data_file:
		data_json = json.load(data_file)
		if "data" not in data_json:
			print "one problem"
			continue
	listofIDS.write(data_json['data']['testId'] + "\n")
listofIDS.close()		
