package com.jba.repository;

/**
 * Created by Анастасия on 09.05.2017.
 */

import org.springframework.data.jpa.repository.JpaRepository;

import com.jba.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

    User findByName(String name);


}