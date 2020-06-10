# giphynator

A small script to create GIFs from videos via `ffmpeg`.

## Usage

```
./run.sh <input> <output> <start> <time_step>
```

For example run `./run.sh video.mp4 video.gif 120 10` to extract a `10s` long
GIF starting at `120s`.

`run.sh` also has variables to set framerate and resolution.
