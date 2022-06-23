package com.atmusic.dao.impl;

import com.atmusic.dao.RecordingDao;
import com.atmusic.pojo.Recording;
import com.atmusic.pojo.User;
import com.atmusic.utils.JdbcUtils;

import java.sql.Connection;
import java.util.List;

public class RecordingDaoImpl extends BaseDaoImpl<Recording> implements RecordingDao {
    Connection connection = null;

    @Override
    public int addMusicRecording(Recording recording) {
        connection = JdbcUtils.getConnection();
        String sql = "insert  into u_Recording(`username`,`songname`,`singer`,`Recording_count`) " +
                "values (?,?,?,?)";
        return update(connection,sql,recording.getUsername(),recording.getSongname(),recording.getSinger(),recording.getRecordingCount());

    }

    @Override
    public int deleteRecording(Integer id) {
        connection = JdbcUtils.getConnection();
        String sql = "delete from u_Recording where id = ?";
        return update(connection,sql,id);

    }

    @Override
    public int queryMusicRecording(Recording recording) {
        connection = JdbcUtils.getConnection();
        String sql = "SELECT * FROM u_Recording WHERE username = ? and songname = ?";
        if(get(connection,sql,recording.getUsername(),recording.getSongname()) != null){
            return 1;
        }else {

            return -1;
        }
    }

    @Override
    public List<Recording> queryRecordingMusics(User user) {
        connection = JdbcUtils.getConnection();
        String sql = "SELECT `id`,`username`,`songname`,`singer`,`Recording_count` RecordingCount " +
                "FROM u_Recording WHERE username = ?";

        return getForList(connection,sql,user.getUsername());
    }

}
