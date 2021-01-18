package com.cameron.SoloProject.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cameron.SoloProject.models.Items;

@Repository
public interface ItemRepository extends CrudRepository<Items, Long>{

}
