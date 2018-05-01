# MP3 Splitter

Given an MP3 file, and track listing with times as `hh:mm:ss TRACKNUM TRACKNAME`, create individual MP3 files.

        mp3split AUDIOFILE TRACKFILE


Split an MP3 into several files, according to its track list

The track list must match the below format, specifying time extents, then track number, then the track title.
Meta variables at the top of the file can be specified for the IDv3 tags.
Blank lines and lines starting with `#` are ignored.


      %artist Artist Name
      %album Album Title

      00:00:00-00:02:31 01 Title of first track
      00:02:31-00:05:13 02 Second track's title



You can spread variables around the file too; this is typically useful for including additional artists

      %artist Music Pearson
      %album Album Title

      00:00:00-00:02:31 01 First Track

      %artist Music Pearson, feat. Guy Other
      00:02:31-00:05:13 02 Collabo Title (feat. Guy Other)

      %artist Music Pearson
      00:05:13-00:07:42 03 Back to Soloing


