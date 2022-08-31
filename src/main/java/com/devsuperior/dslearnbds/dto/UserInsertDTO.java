package com.devsuperior.dslearnbds.dto;

import com.devsuperior.dslearnbds.services.validation.UserInsertValid;


@UserInsertValid
public class UserInsertDTO extends UserDTO{
    private static final long serialVersionUID = 1L;

    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
