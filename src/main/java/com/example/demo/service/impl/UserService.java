package com.example.demo.service.impl;

import com.example.demo.model.Size;
import com.example.demo.model.User;
import com.example.demo.responsitory.IUserResponsitory;
import com.example.demo.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.Optional;
import java.util.UUID;

@Service
public class UserService implements IUserService {
    private final long date = System.currentTimeMillis();
    private final Date dateNow = new Date(date);
    @Autowired
    IUserResponsitory iUserResponsitory;

    @Override
    public void deleteUser(UUID id) {
        Optional<User> indexUser = iUserResponsitory.findById(id);
        if(indexUser.isPresent()){
            iUserResponsitory.deleteUser(id);
        }
    }

    @Override
    public User updateUser(User user) {
        User updaUser1 = iUserResponsitory.findById(user.getId()).orElse(null).builder()
                .id(user.getId())
                .full_name(user.getFull_name())
                .email(user.getEmail())
                .password(user.getPassword())
                .phone_number(user.getPhone_number())
                .created_date(dateNow)
                .citizen_identity(user.getCitizen_identity())
                .address_(user.getAddress_())
                .status_(user.getStatus_())
                .build();
        return iUserResponsitory.save(updaUser1);
    }

    @Override
    public User detailuser(UUID id) {
        return iUserResponsitory.findById(id).orElse(null);
    }

    @Override
    public User adduser(User user) {
         User newUser1= new User().builder()
                .full_name(user.getFull_name())
                .email(user.getEmail())
                 .password(user.getPassword())
                 .phone_number(user.getPhone_number())
                 .created_date(dateNow)
                 .citizen_identity(user.getCitizen_identity())
                 .address_(user.getAddress_())
                 .status_(user.getStatus_())
                .build();
        return iUserResponsitory.save(newUser1);
    }
}
