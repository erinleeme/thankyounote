package dto;

import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.Objects;

public class UserDto {
    private int seq;
    private String id;
    private String pwd;
    private String name;
    private Date reg_date;
    private Date up_date;

    public UserDto(){}

    public UserDto(int seq, String id, String pwd, String name, Date reg_date, Date up_date) {
        this.seq = seq;
        this.id = id;
        this.pwd = pwd;
        this.name = name;
        this.reg_date = reg_date;
        this.up_date = up_date;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }

    public Date getUp_date() {
        return up_date;
    }

    public void setUp_date(Date up_date) {
        this.up_date = up_date;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserDto userDto = (UserDto) o;
        return seq == userDto.seq && Objects.equals(id, userDto.id) && Objects.equals(pwd, userDto.pwd) && Objects.equals(name, userDto.name) && Objects.equals(reg_date, userDto.reg_date) && Objects.equals(up_date, userDto.up_date);
    }

    @Override
    public int hashCode() {
        return Objects.hash(seq, id, pwd, name, reg_date, up_date);
    }

    @Override
    public String toString() {
        return "UserDto{" +
                "seq=" + seq +
                ", id='" + id + '\'' +
                ", pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", reg_date=" + reg_date +
                ", up_date=" + up_date +
                '}';
    }
}
