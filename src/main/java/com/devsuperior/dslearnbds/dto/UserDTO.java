package com.devsuperior.dslearnbds.dto;

import com.devsuperior.dslearnbds.entities.User;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class UserDTO implements Serializable {
    private static final long serialVersionUID = 1L;

    private Long id;
    private String email;

    Set<RoleDTO> roles = new HashSet<>();

    public UserDTO(User entity){
        this.id = entity.getId();
        this.email = entity.getEmail();
        entity.getRoles().forEach(role ->
                this.roles.add(new RoleDTO(role)));
    }

    public UserDTO() {
    }

    public UserDTO(Long id, String firstName, String lastName, String email, Set<RoleDTO> roles) {
        this.id = id;
        this.email = email;
        this.roles = roles;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Set<RoleDTO> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleDTO> roles) {
        this.roles = roles;
    }
}
