package dto;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

public class CustomUserDetails extends User {

    public CustomUserDetails(UserDto userDto, Collection<? extends GrantedAuthority> authorities) {
        super(userDto.getId(),
                userDto.getPwd(),
                true,
                true,
                true,
                true,
                authorities);
    }
}
