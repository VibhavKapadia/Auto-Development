package com.VO;


import com.VO.LoginVo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Registration")
public class RegistrationVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int registrationId;
	@Column
	private String firstname;
	@Column
	private String lastname;
	@ManyToOne
	private LoginVo loginVO;
	
	public int getRegistrationId() {
		return registrationId;
	}
	public void setRegistrationId(int registrationId) {
		this.registrationId = registrationId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public LoginVo getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVo loginVO) {
		this.loginVO = loginVO;
	}
	
	
	
}
