package com.itwillbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.itwillbs.domain.ReviewDTO;

@Mapper
public interface ReviewMapper {
    void insertReview(ReviewDTO reviewDTO);
    int deleteReview(int reviewId);
    void updateReview(ReviewDTO reviewDTO);
    List<ReviewDTO> getReviewsByMovieId(int movieId);
}