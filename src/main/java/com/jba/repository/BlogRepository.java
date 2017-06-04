package com.jba.repository;

/**
 * Created by Анастасия on 09.05.2017.
 */

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jba.entity.Blog;
import com.jba.entity.User;

public interface BlogRepository extends JpaRepository<Blog, Integer>{

    List<Blog> findByUser(User user);
}