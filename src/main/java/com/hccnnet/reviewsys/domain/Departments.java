package com.hccnnet.reviewsys.domain;

public class Departments {
    private Integer dId;

    private String dDeptName;

    private String attribute1;

    private String attribute2;

    private String attribute3;

    public Integer getdId() {
        return dId;
    }

    public void setdId(Integer dId) {
        this.dId = dId;
    }

    public String getdDeptName() {
        return dDeptName;
    }

    public void setdDeptName(String dDeptName) {
        this.dDeptName = dDeptName == null ? null : dDeptName.trim();
    }

    public String getAttribute1() {
        return attribute1;
    }

    public void setAttribute1(String attribute1) {
        this.attribute1 = attribute1 == null ? null : attribute1.trim();
    }

    public String getAttribute2() {
        return attribute2;
    }

    public void setAttribute2(String attribute2) {
        this.attribute2 = attribute2 == null ? null : attribute2.trim();
    }

    public String getAttribute3() {
        return attribute3;
    }

    public void setAttribute3(String attribute3) {
        this.attribute3 = attribute3 == null ? null : attribute3.trim();
    }
}