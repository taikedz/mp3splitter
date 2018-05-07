### MP3 Splitter Usage:help
#
#      mp3split TRACKFILE { align | MP3FILE }
#
# Split an MP3 into several files, according to its track list.
#
# Use the `align` command instead of an MP3 file name to see how the track listing is processed.
#
# MP3FILE must be a path to an MP3 file.
#
#   mp3split length MP3FILE
#
# Display the play length of the MP3 file.
#
# ## Track list file
#
# The track list must match the below format, specifying time extents, then track number, then the track title.
# Meta variables at the top of the file can be specified for the IDv3 tags.
# Blank lines and lines starting with `#` are ignored.
#
#
#      %artist Artist Name
#      %album Album Title
#
#      00:00:00-00:02:31 01 Title of first track
#      00:02:31-00:05:13 02 Second track's title
#
#
# If you only have a file with track start times like
#
#      00:00:00 01 Title of first track
#      00:02:31 02 Second track's title
#      00:05:13 (end of tracks)
# 
# Then you can run `mp3split align your-trackfile.txt` ; this will align all the times found in the file, though note that the last time entry should simply be the end of the last track.
#
#
# You can spread variables around the file too; this is typically useful for including additional artists
#
#      %artist Music Pearson
#      %album Album Title
#
#      00:00:00-00:02:31 01 First Track
#
#      %artist Music Pearson, feat. Guy Other
#      00:02:31-00:05:13 02 Collabo Title (feat. Guy Other)
#
#      %artist Music Pearson
#      00:05:13-00:07:42 03 Back to Soloing
# 
###/doc

# not supported - need to use an IDv3 tag editor after the fiels are split out
#
#   %year Year
#   %genre Genre description
#
# ##/doc
