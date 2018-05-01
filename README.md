# MP3 Splitter

Given an MP3 file, and track listing with times as `hh:mm:ss TRACKNUM TRACKNAME`, create individual MP3 files.

      mp3split AUDIOFILE TRACKFILE

      mp3split align TRACKFILE

Split an MP3 into several files, according to its track list

The track list must match the below format, specifying time extents, then track number, then the track title.
Meta variables at the top of the file can be specified for the IDv3 tags.
Blank lines and lines starting with `#` are ignored.


      %artist Artist Name
      %album Album Title

      00:00:00-00:02:31 01 Title of first track
      00:02:31-00:05:13 02 Second track's title


If you only have a file with track start times like

      00:00:00 01 Title of first track
      00:02:31 02 Second track's title
      00:05:13 (end of tracks)

Then you can run `mp3split align your-trackfile.txt` ; this will align all the times found in the file, though note that the last time entry should simply be the end of the last track.


You can spread variables around the file too; this is typically useful for including additional artists

      %artist Music Pearson
      %album Album Title

      00:00:00-00:02:31 01 First Track

      %artist Music Pearson, feat. Guy Other
      00:02:31-00:05:13 02 Collabo Title (feat. Guy Other)

      %artist Music Pearson
      00:05:13-00:07:42 03 Back to Soloing


