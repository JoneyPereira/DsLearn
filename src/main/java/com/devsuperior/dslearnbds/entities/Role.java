package com.devsuperior.dslearnbds.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "tb_role")
public class Role implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;
    private String authority;

    public Role() {
    }

    public Role(Long id, String authority) {
        Id = id;
        this.authority = authority;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Role)) return false;
        Role role = (Role) o;
        return Objects.equals(Id, role.Id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(Id);
    }

    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
