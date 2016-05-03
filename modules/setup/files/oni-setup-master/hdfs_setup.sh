#!/bin/bash

DSOURCES=('flow' 'dns')
DFOLDERS=('binary' 'csv' 'hive' 'stage')
DBNAME='duxbury'
source /etc/duxbay.conf

for d in "${DSOURCES[@]}" 
do 
	echo "creating /$d"
	hdfs dfs -mkdir ${HUSER}/$d 
	for f in "${DFOLDERS[@]}" 
	do 
		echo "creating $d/$f"
		hdfs dfs -mkdir ${HUSER}/$d/$f
	done
done

#
# create hive tables
#
#configure / create catalog
hive -e "CREATE DATABASE ${DBNAME}"

for d in "${DSOURCES[@]}" 
do 
	hive -hiveconf huser=${HUSER} -hiveconf dbname=${DBNAME} -f create_${d}_avro_parquet.hql
done


