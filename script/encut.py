#!/usr/bin/env python3

import os
import shutil

esta = 200 # start
efin = 501 # end(not included)
estp = 50  # step

cwd = os.getcwd() # current working directory
src_path = os.path.join(cwd,'src')


for eny in range(esta,efin,estp):
	dname = str(eny)
	dst_path = os.path.join(cwd,dname)
	os.mkdir(dst_path)

	# copy files
	for file_name in ['ssc.pbs','cleanup.sh','INCAR','POSCAR','POTCAR','KPOINTS']:
		src_name = os.path.join(src_path,file_name)
		dst_name = os.path.join(dst_path,file_name)
		shutil.copyfile(src_name,dst_name)

	# append ENCUT
	dst_name = os.path.join(dst_path,'INCAR')
	with open (dst_name,'a') as file_writer:
		line = 'ENCUT = ' + str(eny)
		file_writer.write(line)

