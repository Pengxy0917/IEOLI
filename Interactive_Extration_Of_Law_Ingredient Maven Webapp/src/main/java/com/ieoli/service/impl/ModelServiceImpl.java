package com.ieoli.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ieoli.dao.ModelEntityMapper;
import com.ieoli.entity.ModelEntity;
import com.ieoli.entity.ModelEntityExample;
import com.ieoli.service.ModelService;
@Service("modelservice")
public class ModelServiceImpl implements ModelService{

	@Resource
	ModelEntityMapper mapper;
	@Override
	public List<ModelEntity> getModels() {
		// TODO Auto-generated method stub
		 List<ModelEntity> lists;
		 ModelEntityExample me = new ModelEntityExample();
		 me.createCriteria();
		 me.or().andModeldescriptionIsNotNull();
		 lists = mapper.selectByExample(me);
		 return lists;
	}
	@Override
	public void insertModel(String description) {
		// TODO Auto-generated method stub
		ModelEntity meEntity = new ModelEntity();
		meEntity.setModeldescription(description);
		mapper.insert(meEntity);
		
	}
	@Override
	public void updateModel(int id, String description) {
		// TODO Auto-generated method stub
		ModelEntity meEntity = new ModelEntity();
		meEntity.setModelid(id);
		meEntity.setModeldescription(description);
		mapper.updateByPrimaryKey(meEntity);
	}

}
