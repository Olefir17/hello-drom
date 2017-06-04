package com.jba.service;


import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.jba.entity.Blog;
import com.jba.entity.Item;
import com.jba.entity.Role;
import com.jba.entity.User;
import com.jba.repository.BlogRepository;
import com.jba.repository.ItemRepository;
import com.jba.repository.RoleRepository;
import com.jba.repository.UserRepository;

@Transactional
@Service
public class InitDbService {

    @Autowired
    private RoleRepository roleRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private BlogRepository blogRepository;

    @Autowired
    private ItemRepository itemRepository;

    @PostConstruct
    public void init() {
        if (roleRepository.findByName("ROLE_ADMIN") == null) {
            Role roleUser = new Role();
            roleUser.setName("ROLE_USER");
            roleRepository.save(roleUser);

            Role roleAdmin = new Role();
            roleAdmin.setName("ROLE_ADMIN");
            roleRepository.save(roleAdmin);

            User userAdmin = new User();
            userAdmin.setEnabled(true);
            userAdmin.setName("admin");
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            userAdmin.setPassword(encoder.encode("admin"));
            List<Role> roles = new ArrayList<Role>();
            roles.add(roleAdmin);
            roles.add(roleUser);
            userAdmin.setRoles(roles);
            userRepository.save(userAdmin);

            Blog blogJavavids = new Blog();
            blogJavavids.setName("LiveJournal");
            blogJavavids
                    .setUrl("http://wolfgrel.livejournal.com/data/rss");
            blogJavavids.setUser(userAdmin);
            blogRepository.save(blogJavavids);

            // Item item1 = new Item();
            // item1.setBlog(blogJavavids);
            // item1.setTitle("first");
            // item1.setLink("http://www.javavids.com");
            // item1.setPublishedDate(new Date());
            // itemRepository.save(item1);
            //
            // Item item2 = new Item();
            // item2.setBlog(blogJavavids);
            // item2.setTitle("second");
            // item2.setLink("http://www.javavids.com");
            // item2.setPublishedDate(new Date());
            // itemRepository.save(item2);
        }

    }
}