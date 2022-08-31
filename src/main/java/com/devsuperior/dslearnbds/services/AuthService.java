package com.devsuperior.dslearnbds.services;

import com.devsuperior.dslearnbds.entities.User;
import com.devsuperior.dslearnbds.repositories.UserRepository;
import com.devsuperior.dslearnbds.services.execeptions.ForbiddenException;
import com.devsuperior.dslearnbds.services.execeptions.UnauthorizeException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuthService {

    @Autowired
    private UserRepository userRepository;

    @Transactional(readOnly = true)
    public User authenticated(){

        try {
            String username = SecurityContextHolder.getContext().getAuthentication().getName();
            return userRepository.findByEmail(username);
        }
        catch (Exception e){
            throw new UnauthorizeException("Usuário invalido!");
        }
    }

    public void validadeSelfOrAdmin(Long userId){
        User user = authenticated();
        if(user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN"))
        {
            throw new ForbiddenException("Acesso negado!");
        }
    }
}