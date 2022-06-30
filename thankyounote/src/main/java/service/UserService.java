package service;

import java.util.Map;

public interface UserService {

    String loginCheck(Map<String, String> map);

    void logout();

    String valCheck(String id);

    void register(Map<String, String> map);
}
