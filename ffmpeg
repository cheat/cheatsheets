# To print file metadata:
ffmpeg -i <file>

# To convert all m4a files to mp3
for f in *.m4a; do ffmpeg -i "$f" -acodec libmp3lame -vn -b:a 320k "${f%.m4a}.mp3"; done

# To convert video from .foo to .bar
# -g : GOP, for searchability
ffmpeg -i input.foo -vcodec bar -acodec baz -b:v 21000k -b:a 320k -g 150 -threads 4 output.bar

# To convert image sequence to video:
ffmpeg -r 18 -pattern_type glob -i '*.png' -b:v 21000k -s hd1080 -vcodec vp9 -an -pix_fmt yuv420p -deinterlace output.ext

# To combine video and audio into one file
ffmpeg -i video.ext -i audio.ext -c:v copy -c:a copy output.ext

# To add ass subtitle to the video
ffmpeg -i input_video.mp4 -vf ass=sub.ass output_video_subtitles.mp4

# To convert webm to mp4
ffmpeg -i input_video.webm output_video.mp4

# To convert mp4 to mov
ffmpeg -i input_video.mp4 -acodec copy -vcodec copy -f mov output_video.mov

# To convert mov to mp4
ffmpeg -i input_video.mov -vcodec copy -acodec copy output_video.mp4

# Listen to 10 seconds of audio from a video file
#
# -ss : start time
# -t  : seconds to cut
# -autoexit : closes ffplay as soon as the audio finishes
ffmpeg -ss 00:34:24.85 -t 10 -i path/to/file.mp4 -f mp3 pipe:play | ffplay -i pipe:play -autoexit

