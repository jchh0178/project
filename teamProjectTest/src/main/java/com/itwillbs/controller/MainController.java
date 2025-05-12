package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.MovieDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.service.MovieService;

@Controller
@RequestMapping("/main/*")
public class MainController {
   
   @Inject
   private MovieService movieService;
   
   @GetMapping("/main")
   public String main(@RequestParam(value = "pageNum", defaultValue = "1") String pageNum, Model model) {
      System.out.println("LoginController main()");
      // 한 화면에 보여줄 글개수 설정
       int pageSize = 4;
       int currentPage = Integer.parseInt(pageNum);
       
       PageDTO pageDTO = new PageDTO();
      pageDTO.setPageSize(pageSize);
      pageDTO.setPageNum("1");
      pageDTO.setCurrentPage(currentPage);
       
      List<MovieDTO> movieList = movieService.getMovieList(pageDTO);
      
      int count = movieService.countMovie();
      int pageBlock = 5;
      int startPage = (currentPage - 1) / pageBlock * pageBlock + 1;
      int endPage = startPage + pageBlock - 1;
      int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);

      if (endPage > pageCount) {
          endPage = pageCount;
      }

      pageDTO.setCount(count);
      pageDTO.setPageBlock(pageBlock);
      pageDTO.setStartPage(startPage);
      pageDTO.setEndPage(endPage);
      pageDTO.setPageCount(pageCount);

      model.addAttribute("pageDTO", pageDTO);
      model.addAttribute("movieList", movieList);
      
      return "/main/main";  
   }
}
