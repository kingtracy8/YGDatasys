package com.hccnnet.reviewsys.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class WorkReport {
    private Integer wId;

    private Integer epId;

    private String epName;

    private String gender;

    private String school;

    private String profession;

    private Integer deptId;

    private String deptName;

    private Integer t1Id;

    private String t1Name;

    private Integer t2Id;

    private String t2Name;

    private Integer leaderId;

    private String leaderName;

    private String content;

    private String experience;

    private String comments;

    private Integer fraction;
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date completeTime;

    private String attribute1;

    private String attribute2;

    private String attribute3;

    public Integer getwId() {
        return wId;
    }

    public void setwId(Integer wId) {
        this.wId = wId;
    }

    public Integer getEpId() {
        return epId;
    }

    public void setEpId(Integer epId) {
        this.epId = epId;
    }

    public String getEpName() {
        return epName;
    }

    public void setEpName(String epName) {
        this.epName = epName == null ? null : epName.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school == null ? null : school.trim();
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession == null ? null : profession.trim();
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName == null ? null : deptName.trim();
    }

    public Integer getT1Id() {
        return t1Id;
    }

    public void setT1Id(Integer t1Id) {
        this.t1Id = t1Id;
    }

    public String getT1Name() {
        return t1Name;
    }

    public void setT1Name(String t1Name) {
        this.t1Name = t1Name == null ? null : t1Name.trim();
    }

    public Integer getT2Id() {
        return t2Id;
    }

    public void setT2Id(Integer t2Id) {
        this.t2Id = t2Id;
    }

    public String getT2Name() {
        return t2Name;
    }

    public void setT2Name(String t2Name) {
        this.t2Name = t2Name == null ? null : t2Name.trim();
    }

    public Integer getLeaderId() {
        return leaderId;
    }

    public void setLeaderId(Integer leaderId) {
        this.leaderId = leaderId;
    }

    public String getLeaderName() {
        return leaderName;
    }

    public void setLeaderName(String leaderName) {
        this.leaderName = leaderName == null ? null : leaderName.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience == null ? null : experience.trim();
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments == null ? null : comments.trim();
    }

    public Integer getFraction() {
        return fraction;
    }

    public void setFraction(Integer fraction) {
        this.fraction = fraction;
    }

    public Date getCompleteTime() {
        return completeTime;
    }

    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
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