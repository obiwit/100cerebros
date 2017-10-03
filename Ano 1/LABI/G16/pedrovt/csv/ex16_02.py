import csv
import random

# ex 16.2
# em csv.DictWriter, delimiter é um parametro opcional

def main():
	# program is running
	print("File is being generated.")

	fout = open ('rand.csv', 'w')
	writer = csv.DictWriter(fout, fieldnames=['time', 'value'], delimiter='|')
	writer.writeheader()

	for i in range(1,10):
		writer.writerow({'time': i, 'value' : random.randint(1,100)} )

	fout.close()
	print("File created sucessfully.")

main()