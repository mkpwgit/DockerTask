package com.docker.task.service;

import com.docker.task.model.User;
import com.docker.task.repository.UserRepository;

import java.util.List;
import java.util.stream.StreamSupport;

import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getUsers() {
        return StreamSupport.stream(userRepository.findAll().spliterator(), false)
                .map(entity -> new User(entity.getId(), entity.getName(), entity.getEmail()))
                .toList();
    }
}
