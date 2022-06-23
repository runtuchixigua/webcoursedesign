package com.atmusic.service;

import com.atmusic.pojo.Recording;
import com.atmusic.pojo.User;

import java.util.List;

public interface MusicRecordingService {
    /**
     * 添加音乐播放记录信息
     * @param recording
     * @return
     */
    public void add(Recording recording);

    /**
     * 删除音乐播放记录信息
     * @param id
     * @return
     */
    public void delete(Integer id);

    /**
     * 查询音乐播放记录信息是否存在
     *
     * @param recording
     * @return true:存在 false：不存在
     */
    public boolean exist(Recording recording);

    /**
     * 根据用户信息查询所有播放记录歌曲信息
     * @param user
     * @return
     */
    public List<Recording> queryRecordingMusics(User user);
}
