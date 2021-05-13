package com.hccnnet.reviewsys.utils;

import com.hccnnet.reviewsys.domain.FileDo;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2021/4/28.
 */
public class FileUtils {


    public static List<String> getFiles(String path) {
        List<String> files = new ArrayList<String>();
        File file = new File(path);
        File[] tempList = file.listFiles();

        for (int i = 0; i < tempList.length; i++) {
            if (tempList[i].isFile()) {
                files.add(tempList[i].toString());
                //文件名，不包含路径
                //String fileName = tempList[i].getName();
            }
            if (tempList[i].isDirectory()) {
                //这里就不递归了，
            }
        }
        return files;
    }


    public static List<FileDo> getFile(String path) {
        List<FileDo> files = new ArrayList<FileDo>();
        File file = new File(path);
        File[] tempList = file.listFiles();
        for (int i = 0; i < tempList.length; i++) {
            if (tempList[i].isFile()) {

                FileDo fileDo = new FileDo();
                fileDo.setLastModofied(tempList[i].lastModified());
                fileDo.setFileName(tempList[i].getName());
                files.add(fileDo);

            }
            if (tempList[i].isDirectory()) {
                //这里就不递归了，
            }
        }
        return files;
    }



}
