#!/bin/bash

#Run through all CSVs and replace regional state names with simple state name
cat incsv/*.* | sed 's_Kentucky (East)_Kentucky_g' | sed 's_Kentucky (West)_Kentucky_g' | sed 's_Pennsylvania (Bituminous)_Pennsylvania_g' | sed 's_Pennsylvania (Anthracite)_Pennsylvania_g' |  sed 's_West Virginia (Southern)_West Virginia_g' | sed 's_West Virginia (Northern)_West Virginia_g' | sed '/,,,,,,,,,,,,,/d' | sed 's_Mine State_State_g' | sed 's_Mine County_County_g' > outcsv/prefips.csv

#Run the Python package AddFIPS to add FIPS codes
addfips -c County -s State outcsv/prefips.csv > outcsv/fips.csv



# cat incsv/coalpublic20*.* | sed 's_Kentucky (East)_Kentucky_g' | sed 's_Kentucky (West)_Kentucky_g' | sed 's_Pennsylvania (Bituminous)_Pennsylvania_g' | sed 's_Pennsylvania (Anthracite)_Pennsylvania_g' |  sed 's_West Virginia (Southern)_West Virginia_g' | sed 's_West Virginia (Northern)_West Virginia_g' | sed '/,,,,,,,,,,,,,/d' | sed 's_Mine State_State_g' | sed 's_Mine County_County_g' > outcsv/prefips2000-13.csv
# addfips -c County -s State outcsv/prefips2000-13.csv > outcsv/fips2000-13.csv

# cat incsv/coalpublic198*.* | sed 's_Kentucky (East)_Kentucky_g' | sed 's_Kentucky (West)_Kentucky_g' | sed 's_Pennsylvania (Bituminous)_Pennsylvania_g' | sed 's_Pennsylvania (Anthracite)_Pennsylvania_g' |  sed 's_West Virginia (Southern)_West Virginia_g' | sed 's_West Virginia (Northern)_West Virginia_g' | sed '/,,,,,,,,,,,,,/d' | sed 's_Mine State_State_g' | sed 's_Mine County_County_g' > outcsv/prefips1983-89.csv
# addfips -c County -s State  outcsv/prefips1983-89.csv > outcsv/fips1983-89.csv

# cat incsv/coalpublic199*.* | sed 's_Kentucky (East)_Kentucky_g' | sed 's_Kentucky (West)_Kentucky_g' | sed 's_Pennsylvania (Bituminous)_Pennsylvania_g' | sed 's_Pennsylvania (Anthracite)_Pennsylvania_g' |  sed 's_West Virginia (Southern)_West Virginia_g' | sed 's_West Virginia (Northern)_West Virginia_g' | sed '/,,,,,,,,,,,,,/d' | sed 's_Mine State_State_g' | sed 's_Mine County_County_g' > outcsv/prefips1990-99.csv
# addfips -c County -s State  outcsv/prefips1990-99.csv > outcsv/fips1990-99.csv

# grep -vwE ",,,,,,,,,,,,," 
