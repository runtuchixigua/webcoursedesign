package com.atmusic.dao;

import com.atmusic.pojo.Recording;
import com.atmusic.pojo.User;

import java.util.List;

public interface RecordingDao {
    /**
     * 添加音乐播放信息
     * @param recording
     * @return
     */
    public int addMusicRecording(Recording recording);

    /**
     * 删除音乐播放信息
     * @param id
     * @return
     */
    public int deleteRecording(Integer id);

    /**
     * 查询音乐播放信息
     *
     * @param recording
     * @return
     */
    public int queryMusicRecording(Recording recording);

    /**
     * 根据用户查询所有播放歌曲信息
     * @param user
     * @return
     */
    public List<Recording> queryRecordingMusics(User user);

}
