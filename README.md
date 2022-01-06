# Introduction-to-MongoDB
#### It's all of my scripts and configuration for Coursera Introduction to MongoDB Course

### Bug fixed
#### Week 1)
+ When you need to import data from .csv file, you can use this command on MacOS :
    mongoimport --type csv --headerline --db mflix --collection movies_initial --host "mflix-shard-00-00.0qanv.mongodb.net:27017,mflix-shard-00-01.0qanv.mongodb.net:27017,mflix-shard-00-02.0qanv.mongodb.net:27017" --authenticationDatabase admin --ssl --username analytics --password analytics-password --file movies_initial.csv

#### Week 2)
####  Quiz --> Cleaning Database
Maybe this url is usable for solving error:
https://www.coursera.org/learn/introduction-mongodb/discussions/weeks/2/threads/4-Ha6Z9bEeiVCwqZSuK-jA

#### Week 3)
####  Final Quiz
pip install matplotlib
conda install -c conda-forge basemap
conda install -c conda-forge basemap-data-hires

#### In Pymongo script for 3D Mapping part, you need to add these lines to first block
import os
import conda

conda_file_dir = conda.__file__
conda_dir = conda_file_dir.split('lib')[0]
proj_lib = os.path.join(os.path.join(conda_dir, 'share'), 'proj')
os.environ["PROJ_LIB"] = proj_lib
