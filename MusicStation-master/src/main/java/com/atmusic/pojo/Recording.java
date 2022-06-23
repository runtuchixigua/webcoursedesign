package com.atmusic.pojo;

public class Recording {
    private Integer id;
    private String username;
    private String songname;
    private String singer;
    private Integer RecordingCount;

    public Recording() {
    }

    public Recording(Integer id, String username, String songname, String singer, Integer recordingCount) {
        this.id = id;
        this.username = username;
        this.songname = songname;
        this.singer = singer;
        RecordingCount = recordingCount;
    }

    @Override
    public String toString() {
        return "Recording{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", songname='" + songname + '\'' +
                ", singer='" + singer + '\'' +
                ", RecordingCount=" + RecordingCount +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSongname() {
        return songname;
    }

    public void setSongname(String songname) {
        this.songname = songname;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public Integer getRecordingCount() {
        return RecordingCount;
    }

    public void setRecordingCount(Integer recordingCount) {
        RecordingCount = recordingCount;
    }


}
