emcc -O2 src/filters.c -o filters.raw.js --closure 1 -s EXPORTED_FUNCTIONS="['_preMultiplyAlpha','_unpreMultiplyAlpha','_blur','_dropshadow','_colormatrix']"
cat src/filters.pre.js > filters.js
cat filters.raw.js >> filters.js
cat src/filters.post.js >> filters.js
rm filters.raw.js
