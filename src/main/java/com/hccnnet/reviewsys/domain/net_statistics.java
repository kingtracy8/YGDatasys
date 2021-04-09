package com.hccnnet.reviewsys.domain;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class net_statistics {
    private String orderNum;

    private Date dataTime;

    private String statistics;

    private String da;

    private String jcj;

    private String yz;

    private String dh;

    private String nd;

    private String hj;

    private String dl;

    private String lc;

    private String bm;

    private String te;

    private String fs;

    private String zq;

    private String total;

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum == null ? null : orderNum.trim();
    }

    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public Date getDataTime() {
        return dataTime;
    }

    public void setDataTime(Date dataTime) {
        this.dataTime = dataTime;
    }

    public String getStatistics() {
        return statistics;
    }

    public void setStatistics(String statistics) {
        this.statistics = statistics == null ? null : statistics.trim();
    }

    public String getDa() {
        return da;
    }

    public void setDa(String da) {
        this.da = da == null ? null : da.trim();
    }

    public String getJcj() {
        return jcj;
    }

    public void setJcj(String jcj) {
        this.jcj = jcj == null ? null : jcj.trim();
    }

    public String getYz() {
        return yz;
    }

    public void setYz(String yz) {
        this.yz = yz == null ? null : yz.trim();
    }

    public String getDh() {
        return dh;
    }

    public void setDh(String dh) {
        this.dh = dh == null ? null : dh.trim();
    }

    public String getNd() {
        return nd;
    }

    public void setNd(String nd) {
        this.nd = nd == null ? null : nd.trim();
    }

    public String getHj() {
        return hj;
    }

    public void setHj(String hj) {
        this.hj = hj == null ? null : hj.trim();
    }

    public String getDl() {
        return dl;
    }

    public void setDl(String dl) {
        this.dl = dl == null ? null : dl.trim();
    }

    public String getLc() {
        return lc;
    }

    public void setLc(String lc) {
        this.lc = lc == null ? null : lc.trim();
    }

    public String getBm() {
        return bm;
    }

    public void setBm(String bm) {
        this.bm = bm == null ? null : bm.trim();
    }

    public String getTe() {
        return te;
    }

    public void setTe(String te) {
        this.te = te == null ? null : te.trim();
    }

    public String getFs() {
        return fs;
    }

    public void setFs(String fs) {
        this.fs = fs == null ? null : fs.trim();
    }

    public String getZq() {
        return zq;
    }

    public void setZq(String zq) {
        this.zq = zq == null ? null : zq.trim();
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
    }
}