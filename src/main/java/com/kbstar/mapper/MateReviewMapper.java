package com.kbstar.mapper;

import com.kbstar.dto.MateReview;
import com.kbstar.dto.MateReviewRate;
import com.kbstar.frame.SBDSMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface MateReviewMapper extends SBDSMapper<Integer, MateReview> {
    List<MateReviewRate> mateRate(Integer mateId);
    List<MateReviewRate> mateRateAll();

    List<MateReview> getByMateId(Integer mateId);
}
