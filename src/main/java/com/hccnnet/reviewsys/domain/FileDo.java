package com.hccnnet.reviewsys.domain;

/**
 * Created by Administrator on 2021/4/28.
 */
public class FileDo {

    private String FileName;

    private Long LastModofied;

    public String getFileName() {
        return FileName;
    }

    public void setFileName(String fileName) {
        FileName = fileName;
    }

    public Long getLastModofied() {
        return LastModofied;
    }

    public void setLastModofied(Long lastModofied) {
        LastModofied = lastModofied;
    }
}
