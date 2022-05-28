The tasks were separated into the tasks/ directory as requestes.
It contains all the .json and .hoa files.

Additionally, a Makefile was added that that allows to execute all the tasks.
Note that the Strix executable must be know in the PATH, 
or simply replace "strix" by "path_to_strix_exe"
(I have not found a way to input the .json into Strix and hardcoding the queries into the makefile was faster than  parsing the .json)

Additionally, the images/ dir was added with all the images present in the report.