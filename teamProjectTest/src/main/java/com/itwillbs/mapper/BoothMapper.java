package com.itwillbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.itwillbs.domain.BoothDTO;

import com.itwillbs.domain.MovieDTO2;
import com.itwillbs.domain.ScreenDTO;

@Mapper
public interface BoothMapper {
   
	public void insertBooth(BoothDTO boothDTO);

	public List<ScreenDTO> listScreen(@Param("screen_date") String screen_date, @Param("movie") String movie, @Param("theater") String theater);

	public BoothDTO getBoothInfo(int booth_id);

	public MovieDTO2 getMovieByScreenId(int screen_id);
	
}
