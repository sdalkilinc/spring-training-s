package com.cydeo.service.impl;


import com.cydeo.dto.AddressDTO;
import com.cydeo.entity.Address;
import com.cydeo.util.MapperUtil;
import com.cydeo.repository.AddressRepository;
import com.cydeo.service.AddressService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AddressServiceImpl implements AddressService {

    @Override
    public List<AddressDTO> findAll() {
        return null;
    }

    @Override
    public AddressDTO findById(Long id) throws Exception {
        return null;
    }

    @Override
    public AddressDTO update(AddressDTO addressDTO) throws Exception {
        return null;
    }

    @Override
    public AddressDTO create(AddressDTO addressDTO) throws Exception {
        return null;
    }
}