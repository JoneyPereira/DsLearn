package com.devsuperior.dslearnbds.dto;

import com.devsuperior.dslearnbds.services.validation.UserUpdateValid;

import java.util.Set;


@UserUpdateValid
public class UserUpdateDTO extends UserDTO{
    private static final long serialVersionUID = 1L;

    public UserUpdateDTO(Long id, String firstName, String lastName, String email, Set<RoleDTO> roles) {
        super(id, firstName, lastName, email, roles);
    }


}
