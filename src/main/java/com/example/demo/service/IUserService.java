package com.example.demo.service;

import com.example.demo.model.Size;
import com.example.demo.model.User;

import java.util.UUID;

public interface IUserService {
    void deleteUser(UUID id);
    User updateUser(User user);
    User detailuser(UUID id);
}
