# Credit: https://engineering.giphy.com/how-to-make-gifs-with-ffmpeg/

INPUT_FILE=$1
OUTPUT_FILE=$2
START=$3
TIME_STEP=$4

RESOLUTION=720
FPS=12

ffmpeg -ss $START -t $TIME_STEP -i $INPUT_FILE -filter_complex "[0:v] fps=$FPS,scale=$RESOLUTION:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" $OUTPUT_FILE
