package service;

import dao.UserDao;
import dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    UserDao userDao;

    @Autowired
    HttpSession session;

    public String loginCheck(Map<String, String> map) {

        System.out.println("UserServiceImpl 접속 >>>>>>>>>>>>>>");

        UserDto userDto = null;

        userDto = userDao.loginCheck(map);

        if(userDto == null) {
            return "non_exist";
        } else {
            session.setAttribute("id", map.get("id"));
            session.setAttribute("name", userDto.getName());

            return "exist";
        }
    }
}
