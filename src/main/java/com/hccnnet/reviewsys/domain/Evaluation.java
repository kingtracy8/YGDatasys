package com.hccnnet.reviewsys.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class Evaluation {
    private Integer elId;

    private Integer deptId;

    private String deptName;

    private Integer eId;

    private String eName;

    private Integer duty;

    private String dutyMemo;

    private Integer positive;

    private String positiveMemo;

    private Integer discipline;

    private String disciplineMemo;

    private Integer extraction;

    private String extractionMemo;

    private Integer understanding;

    private String understandingMemo;

    private Integer expression;

    private String expressionMemo;

    private Integer plan;

    private String planMemo;

    private Integer cooperation;

    private String cooperationMemo;

    private Integer other;

    private String otherMemo;

    private Integer total;

    private Integer t1Id;

    private String t1Name;

    private String t1Review;

    private Integer t1Ischeck;
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date t1Checktime;

    private Integer t2Id;

    private String t2Name;

    private String t2Review;

    private Integer t2Ischeck;
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date t2Checktime;

    private Integer deptLeaderId;

    private String deptLeaderName;

    private String deptLeaderReview;

    private Integer deptLeaderIscheck;
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date deptLeaderChecktime;

    private String attribute1;

    private String attribute2;

    private String attribute3;

    public Integer getElId() {
        return elId;
    }

    public void setElId(Integer elId) {
        this.elId = elId;
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

    public Integer geteId() {
        return eId;
    }

    public void seteId(Integer eId) {
        this.eId = eId;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName == null ? null : eName.trim();
    }

    public Integer getDuty() {
        return duty;
    }

    public void setDuty(Integer duty) {
        this.duty = duty;
    }

    public String getDutyMemo() {
        return dutyMemo;
    }

    public void setDutyMemo(String dutyMemo) {
        this.dutyMemo = dutyMemo == null ? null : dutyMemo.trim();
    }

    public Integer getPositive() {
        return positive;
    }

    public void setPositive(Integer positive) {
        this.positive = positive;
    }

    public String getPositiveMemo() {
        return positiveMemo;
    }

    public void setPositiveMemo(String positiveMemo) {
        this.positiveMemo = positiveMemo == null ? null : positiveMemo.trim();
    }

    public Integer getDiscipline() {
        return discipline;
    }

    public void setDiscipline(Integer discipline) {
        this.discipline = discipline;
    }

    public String getDisciplineMemo() {
        return disciplineMemo;
    }

    public void setDisciplineMemo(String disciplineMemo) {
        this.disciplineMemo = disciplineMemo == null ? null : disciplineMemo.trim();
    }

    public Integer getExtraction() {
        return extraction;
    }

    public void setExtraction(Integer extraction) {
        this.extraction = extraction;
    }

    public String getExtractionMemo() {
        return extractionMemo;
    }

    public void setExtractionMemo(String extractionMemo) {
        this.extractionMemo = extractionMemo == null ? null : extractionMemo.trim();
    }

    public Integer getUnderstanding() {
        return understanding;
    }

    public void setUnderstanding(Integer understanding) {
        this.understanding = understanding;
    }

    public String getUnderstandingMemo() {
        return understandingMemo;
    }

    public void setUnderstandingMemo(String understandingMemo) {
        this.understandingMemo = understandingMemo == null ? null : understandingMemo.trim();
    }

    public Integer getExpression() {
        return expression;
    }

    public void setExpression(Integer expression) {
        this.expression = expression;
    }

    public String getExpressionMemo() {
        return expressionMemo;
    }

    public void setExpressionMemo(String expressionMemo) {
        this.expressionMemo = expressionMemo == null ? null : expressionMemo.trim();
    }

    public Integer getPlan() {
        return plan;
    }

    public void setPlan(Integer plan) {
        this.plan = plan;
    }

    public String getPlanMemo() {
        return planMemo;
    }

    public void setPlanMemo(String planMemo) {
        this.planMemo = planMemo == null ? null : planMemo.trim();
    }

    public Integer getCooperation() {
        return cooperation;
    }

    public void setCooperation(Integer cooperation) {
        this.cooperation = cooperation;
    }

    public String getCooperationMemo() {
        return cooperationMemo;
    }

    public void setCooperationMemo(String cooperationMemo) {
        this.cooperationMemo = cooperationMemo == null ? null : cooperationMemo.trim();
    }

    public Integer getOther() {
        return other;
    }

    public void setOther(Integer other) {
        this.other = other;
    }

    public String getOtherMemo() {
        return otherMemo;
    }

    public void setOtherMemo(String otherMemo) {
        this.otherMemo = otherMemo == null ? null : otherMemo.trim();
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
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

    public String getT1Review() {
        return t1Review;
    }

    public void setT1Review(String t1Review) {
        this.t1Review = t1Review == null ? null : t1Review.trim();
    }

    public Integer getT1Ischeck() {
        return t1Ischeck;
    }

    public void setT1Ischeck(Integer t1Ischeck) {
        this.t1Ischeck = t1Ischeck;
    }

    public Date getT1Checktime() {
        return t1Checktime;
    }

    public void setT1Checktime(Date t1Checktime) {
        this.t1Checktime = t1Checktime;
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

    public String getT2Review() {
        return t2Review;
    }

    public void setT2Review(String t2Review) {
        this.t2Review = t2Review == null ? null : t2Review.trim();
    }

    public Integer getT2Ischeck() {
        return t2Ischeck;
    }

    public void setT2Ischeck(Integer t2Ischeck) {
        this.t2Ischeck = t2Ischeck;
    }

    public Date getT2Checktime() {
        return t2Checktime;
    }

    public void setT2Checktime(Date t2Checktime) {
        this.t2Checktime = t2Checktime;
    }

    public Integer getDeptLeaderId() {
        return deptLeaderId;
    }

    public void setDeptLeaderId(Integer deptLeaderId) {
        this.deptLeaderId = deptLeaderId;
    }

    public String getDeptLeaderName() {
        return deptLeaderName;
    }

    public void setDeptLeaderName(String deptLeaderName) {
        this.deptLeaderName = deptLeaderName == null ? null : deptLeaderName.trim();
    }

    public String getDeptLeaderReview() {
        return deptLeaderReview;
    }

    public void setDeptLeaderReview(String deptLeaderReview) {
        this.deptLeaderReview = deptLeaderReview == null ? null : deptLeaderReview.trim();
    }

    public Integer getDeptLeaderIscheck() {
        return deptLeaderIscheck;
    }

    public void setDeptLeaderIscheck(Integer deptLeaderIscheck) {
        this.deptLeaderIscheck = deptLeaderIscheck;
    }

    public Date getDeptLeaderChecktime() {
        return deptLeaderChecktime;
    }

    public void setDeptLeaderChecktime(Date deptLeaderChecktime) {
        this.deptLeaderChecktime = deptLeaderChecktime;
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