package com.hccnnet.reviewsys.controller;

import com.alibaba.fastjson.JSONObject;
import com.hccnnet.reviewsys.domain.FileDo;
import com.hccnnet.reviewsys.utils.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2021/4/27.
 */
@Controller
@RequestMapping("/file")
public class FileController {

    @RequestMapping("/upload")
    @ResponseBody
    public String importFile(MultipartFile file, HttpServletRequest request) {
        JSONObject object = new JSONObject();
        try {
//            String mchId = request.getParameter("mchId-file");
            String originalFilename = file.getOriginalFilename();

            String dirPath = "F:\\charles's work\\2021年\\6级以上号码释放审批\\4月";
            String filePath = "/" + "_" + originalFilename;
            boolean b = new File(dirPath).mkdirs();
            file.transferTo(new File(dirPath + filePath).getAbsoluteFile());

            object.put("filePath", filePath);
            object.put("code", "success");
            object.put("message", "文件上传成功");
        } catch (IOException e) {
            e.printStackTrace();
            object.put("code", "fail");
            object.put("message", "文件上传失败");
        }
        return object.toJSONString();

    }


    @RequestMapping(value = "/tbFileList", method = RequestMethod.GET)
    public @ResponseBody
    HashMap getFileList(HttpServletRequest request, HttpServletResponse response, @RequestParam("page") String page, @RequestParam("limit") String limit) {

        HashMap map = new HashMap();

        List<FileDo> fileLists = FileUtils.getFile("F:\\charles's work\\2021年\\6级以上号码释放审批\\4月");
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", fileLists.size());
        map.put("data", fileLists);
        return map;

    }


    @RequestMapping(value = "/DownLoad/{fileName}/{fileType}", method = RequestMethod.GET)
    public ResponseEntity<byte[]> download(HttpServletRequest request, @PathVariable String fileName, @PathVariable String fileType) throws IOException {
        File file = new File("F:\\charles's work\\2021年\\6级以上号码释放审批\\4月\\" + fileName + "." + fileType);
        byte[] body = null;
        InputStream is = new FileInputStream(file);
        body = new byte[is.available()];
        is.read(body);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attchement;filename=" + file.getName());
        HttpStatus statusCode = HttpStatus.OK;
        ResponseEntity<byte[]> entity = new ResponseEntity<>(body, headers, statusCode);
        return entity;
    }


    @RequestMapping("/testHttpMessageDown")
    public ResponseEntity<byte[]> download(HttpServletRequest request) throws IOException {
        File file = new File("F:\\charles's work\\2021年\\6级以上号码释放审批\\4月\\_新建文本文档.txt");
        byte[] body = null;
        InputStream is = new FileInputStream(file);
        body = new byte[is.available()];
        is.read(body);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attchement;filename=" + file.getName());
        HttpStatus statusCode = HttpStatus.OK;
        ResponseEntity<byte[]> entity = new ResponseEntity<byte[]>(body, headers, statusCode);
        return entity;
    }


}

