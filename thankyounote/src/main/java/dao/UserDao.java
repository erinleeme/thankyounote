package dao;

import dto.UserDto;

import java.util.Map;

public interface UserDao {
    UserDto loginCheck(Map<String, String> map);

    UserDto valCheck(String id);
}
