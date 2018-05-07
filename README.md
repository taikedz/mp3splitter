# MP3 Splitter

Split an MP3 into several files, according to its track list.

Usage
---

* Get an MP3 file
* Identify the start times of each track
* Write track times and track titles to a track list file
* Run the splitter command

      mp3split TRACKFILE { align | MP3FILE }

Use the `align` command instead of an MP3 file name to see how the track listing is processed.

`MP3FILE` must be a path to an MP3 file.

### Track List File

* Track list's track lines must specify either `TIME TRAKCNUMBER TRACKTITLE` or `TRACKNUMBER TRACKTITLE TIME`.
* Meta variables at the top of the file can be specified for the IDv3 tags.
* Blank lines and lines starting with `#` are ignored.
* The last track time line must be the end time of the last track (typically, the original MP3's duration time)

Examples - a front-timed sequence

    00:00:00 01 Title of first track
    00:02:31 02 Second track's title
    00:05:13 (end of tracks)

A back-timed sequence

    01 Title of first track 00:00
    02 Second track's title 02:31
    05:13 --- end of tracks

A raw sequence

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

