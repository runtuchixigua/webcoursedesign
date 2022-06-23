package com.atmusic.service.impl;

import com.atmusic.dao.RecordingDao;
import com.atmusic.dao.impl.RecordingDaoImpl;
import com.atmusic.pojo.Recording;
import com.atmusic.pojo.Recording;
import com.atmusic.pojo.User;
import com.atmusic.service.MusicRecordingService;

import java.util.List;

public class MusicRecordingServiceImpl implements MusicRecordingService {
    private RecordingDao recordingDao = new RecordingDaoImpl();
    @Override
    public void add(Recording recording) {
        recordingDao.addMusicRecording(recording);
    }

    @Override
    public void delete(Integer id) {
        recordingDao.deleteRecording(id);
    }

    @Override
    public boolean exist(Recording recording) {
        int res = recordingDao.queryMusicRecording(recording);
        if(res != -1){
            return true;
        }
        return false;
    }

    @Override
    public List<Recording> queryRecordingMusics(User user) {
        return recordingDao.queryRecordingMusics(user);
    }

}
