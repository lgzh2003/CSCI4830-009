#! /bin/bash

# Copyright 2017 Peilun Zhang 
 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

ls | grep '^[0-9][0-9]-' > temp

while IFS= read -r var
do
    cd $var 
    ls | grep '[.][h][t][m][l]' > fileName
    while IFS= read -r file 
    do
        echo "$file"
        ../decktape-1.0.0/phantomjs ../decktape-1.0.0/decktape.js ./$file ../pdfs/$file.pdf
    done < fileName

    rm fileName
    cd ..
    
done < temp
rm temp
