package service;

import dao.UserDao;
import dto.CustomUserDetails;
import dto.UserDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private SqlSessionTemplate sqlSession;

    @Autowired
    UserDao userDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        ArrayList<String> authList = new ArrayList<>();
        UserDao userDao = sqlSession.getMapper(UserDao.class);

        UserDto userDto = userDao.valCheck(username);

        if(userDto == null) {
            throw new UsernameNotFoundException(username);
        } else {

        }

        return null;

    }
}
