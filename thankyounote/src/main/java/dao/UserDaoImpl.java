package dao;

import dto.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    SqlSession session;

    @Override
    public UserDto loginCheck(Map<String, String> map) {
        return session.selectOne("userMapper.loginCheck", map);
    }

    @Override
    public UserDto valCheck(String id) {
        return session.selectOne("userMapper.valCheck", id);
    }
}