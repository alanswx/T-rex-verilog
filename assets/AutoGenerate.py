#!/usr/bin/python3
import sys
import os
from PIL import Image
import itertools
import operator
from datetime import datetime

BLANK = (0,0,0,0)
ONEBIT_BLANK = 0
GREY = (83, 83, 83, 255)
NUMBER_GREY = 83
CLOUD_GREY = (218, 218, 218, 255)

now = datetime.now()
current_time = now.strftime("%Y/%m/%d  %H:%M:%S")

msg = '// ' + sys.argv[0].split('/')[1] + ''' Version 1.1
// The following content is auto generated by ''' + sys.argv[0].split('/')[1] + '''
// Written by Zijian Zhao
// github.com/JackZhao98
// Date created: ''' + current_time + '\n\n'

def AnalyzerInit(fileName):
	source_img = Image.open(fileName)
	(width, height) = source_img.size
	obj = fileName.split('/')[1].split('.')[0]
	print("// Auto Generated: " + fileName.split('.')[0])
	print("localparam " + obj + "Width = " + str(width) + " * px;")
	print("localparam " + obj + "Height = " + str(height) + " * px;")
	print("wire inHitBox_" + obj + ";")
	print("wire inGrey_" + obj + ";")
	print("wire inBlank_" + obj + ";")
	print("wire inWhite_" + obj + ";\n")
	print("assign inHitBox_" + obj + " = (X > ox) && (X <= " + obj + "Width) && (Y > oy) && (Y <= "+ obj + "Height);\n" )

def AnalyzerEnd(fileName):
	obj = fileName.split('/')[1].split('.')[0]
	print("assign inWhite_" + obj + " = inHitBox_" + obj + " & ~inBlank_" + obj + " & ~inGrey_" + obj + ";\n")
	print("// End of Auto Generate: " +  fileName.split('.')[0], end = "\n\n")

def AnalyzeImage(fileName):
	source_img = Image.open(fileName)
	(width, height) = source_img.size
	return width, height, source_img.load()

def Analyzer(fileName, findColor):
	color = 0
	if findColor == 0:
		color = BLANK	# Blank
	elif findColor == 2:
		color = GREY	# Grey
	elif findColor == 3:	# Number
		color = NUMBER_GREY
	elif findColor == 4:
		color = ONEBIT_BLANK
	elif findColor == 5:
		color = CLOUD_GREY # Cloud
	else:
		print("// unexpected color value")

	width, height, pixels = AnalyzeImage(fileName)

	obj = fileName.split('/')[1].split('.')[0]
	
	hitPx = []
	for y in range(height):
		for x in range(width):
			#print (pixels[x,y])
			if color == pixels[x,y]:
				hitPx.append((x,y))

	newList = []
	for key, group in itertools.groupby(hitPx, operator.itemgetter(1)):
		newList.append(list(group))

	resultLine = []
	for eachY in newList:
		xRange = []
		xDomain = []
		for each in eachY:
			xRange.append(each[0])
		for k,g in itertools.groupby(enumerate(xRange), lambda x:x[0]-x[1]):
			group = list(map(operator.itemgetter(1), g))
			xDomain.append((group[0], group[-1]))
		
		# print(str(xDomain))
		for each in xDomain:
			# print(str(each))
			for pair in each:
				# print(str(pair))
				resultLine.append((pair, eachY[0][1]))
			# print()
		xDomain = []

	if findColor == 0 or findColor == 4:
		print("assign inBlank_" + obj + " = ")
	else:
		print("assign inGrey_" + obj + " = ")

	if len(resultLine) == 0:
		print('0;')

	for i in range(0,len(resultLine), 2):
		offset_X1 = "" if (resultLine[i][0] == 0) else " + " + str(resultLine[i][0]) + " * px"
		offset_X2 = "" if (resultLine[i + 1][0] == 0) else " + " + str(resultLine[i + 1][0]) + " * px"
		offset_Y1 = "" if (resultLine[i][1] == 0) else " + " + str(resultLine[i][1]) + " * px"
		# offset_Y2 = "" if (resultLine[i + 1][1] + 1 == 0) else " + " + str(resultLine[i + 1][1] + 1) + " * px"
		
		if resultLine[i] == resultLine[0]:
			print("\t   " , end = "")
		
		print("((X > ox" + offset_X1 + ") && (X <= ox" + offset_X2 + ") && (Y == oy" + offset_Y1 + "))", 
			end = "\n\t|| " if (resultLine[i + 1] != resultLine[-1]) else ";\n")

	print ("\t// Total " + str(len(resultLine)) + " lines.\n")


def moduleInit(moduleName):
	print("module draw" + moduleName + "#(parameter ratio = 1)\n" + "\t(", end = "")
	print('''
	    input  wire 	   rst,
	    input  wire [31:0] ox,
	    input  wire [31:0] oy,
	    input  wire [31:0] X,
	    input  wire [31:0] Y,
	    input  wire [3:0]  select,	// Select Pattern
	    output reg  [10:0] objectWidth,
	    output reg  [10:0] objectHeight,
	    output reg 	       inHitBox,
	    output reg 	       inWhite,
	    output reg 	       inGrey);
		''')
	print ("localparam px = ratio;\n\n")

def SelectorInfo(basePath):
	moduleName = basePath.split('/')[0]
	selectFile = moduleName + '.txt'
	selList = []
	print('//\tSelector Summary')
	try:
		f = open(selectFile, 'r')
		for each in f:
			selList.append(each if '\n' not in each else each.split('\n')[0])
		sanitize = []
		with os.scandir(basePath) as entries:			
			for entry in entries:
				if entry.is_file() and "png" in entry.name:
					sanitize.append(entry.name.split('.')[0])
		for s, f in zip(selList, sanitize):
			print("//\t" + str(len(s))+ "'b" + s + "\t: " + f)

		print('\n')
	except Exception as e:
		raise e	

def moduleSel(basePath):
	moduleName = basePath.split('/')[0]
	selectFile = moduleName + '.txt'
	selList = []
	sanitize = []
	try:
		f = open(selectFile, 'r')
		for each in f:
			selList.append(each if '\n' not in each else each.split('\n')[0])

		with os.scandir(basePath) as entries:			
			for entry in entries:
				if entry.is_file() and "png" in entry.name:
					sanitize.append(entry.name.split('.')[0])

		print("\nalways @(*) begin\n")
		print("case(select)\n")
		for sel, name in zip(selList, sanitize):
			print(str(len(sel))+ "'b" + sel + ": begin\t// Case: " + name)
			print('\tinHitBox <= inHitBox_' + name + ";")
			print('\tinWhite <= inWhite_' + name + ";")
			print('\tinGrey <= inGrey_' + name + ";")
			print('\tobjectWidth <= ' + name + "Width;")
			print('\tobjectHeight <= ' + name + "Height;")
			print('end // end of case: Case: ' + name + '\n')
		print("\nendcase\n\nend\t// end of always @(*)\n")

	except Exception as e:
		print("\nalways @(*) begin\n")
		print("case(select)\n")
		with os.scandir(basePath) as entries:			
			for entry in entries:
				if entry.is_file() and "png" in entry.name:
					name = entry.name.split('.')[0]
					print("/*SEL*/: begin\t// Case: " + name)
					print('\tinHitBox <= inHitBox_' + name + ";")
					print('\tinWhite <= inWhite_' + name + ";")
					print('\tinGrey <= inGrey_' + name + ";")
					print('\tobjectWidth <= ' + name + "Width;")
					print('\tobjectHeight <= ' + name + "Height;")
					print('end // end of case: Case: ' + name + '\n')

		print("\nendcase\nend\t// end of always @(*)\n")


def moduleEnd(moduleName):
	print("endmodule // end of " + moduleName)
	print('''
// Auto generate complete.
// Direct modification of this file may cause unexpected issues.
// Copyright © 2020 Zijian Zhao. All rights reserved.
		''')

def main():
	basePath = sys.argv[1].split('/')[1] + '/'
	moduleName = basePath.split('/')[0]

	print(msg)
	SelectorInfo(basePath)
	moduleInit(moduleName)

	with os.scandir(basePath) as entries:
		for entry in entries:
			if entry.is_file() and "png" in entry.name:
				AnalyzerInit(basePath + entry.name)		# Initialization of vars
				
				if moduleName == "Number":
					Analyzer(basePath + entry.name, 4)	# Number Blank
					Analyzer(basePath + entry.name, 3)	# Number Grey
				elif moduleName == "Decor":
					Analyzer(basePath + entry.name, 0)	# Cloud Blank
					Analyzer(basePath + entry.name, 5)	# Cloud Grey
				else:
					Analyzer(basePath + entry.name, 0)
					Analyzer(basePath + entry.name, 2)
				AnalyzerEnd(basePath + entry.name)		# Some last minute assignments

	moduleSel(basePath)							# Generate selection block.
	moduleEnd(moduleName)


if __name__ == "__main__":
	main()


