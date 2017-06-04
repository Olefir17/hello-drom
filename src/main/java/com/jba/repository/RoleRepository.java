package com.jba.repository;

/**
 * Created by Анастасия on 09.05.2017.
 */

import org.springframework.data.jpa.repository.JpaRepository;

import com.jba.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{

    Role findByName(String name);

}