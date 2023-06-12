package com.kbstar.service;

import com.kbstar.dto.MateReview;
import com.kbstar.dto.MateReviewRate;
import com.kbstar.frame.SBDSService;
import com.kbstar.mapper.MateReviewMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
public class MateReviewService implements SBDSService<Integer, MateReview> {

    @Autowired
    MateReviewMapper mapper;

    @Override
    public void register(MateReview mateReview) throws Exception {
        mapper.insert(mateReview);
    }

    @Override
    public void remove(Integer id) throws Exception {
        mapper.delete(id);
    }

    @Override
    public void modify(MateReview mateReview) throws Exception {
        mapper.update(mateReview);
    }

    @Override
    public MateReview get(Integer id) throws Exception {
        return mapper.select(id);
    }

    @Override
    public List<MateReview> get() throws Exception {
        return mapper.selectall();
    }

    public List<MateReview> getByMateId(Integer mateId) throws  Exception{
        return mapper.getByMateId(mateId);
    }

    public List<MateReviewRate> mateRate(Integer mateId){
        return mapper.mateRate(mateId);
    }

    public List<MateReviewRate> mateRateAll(){
        return mapper.mateRateAll();
    }

}
