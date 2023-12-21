package com.qcby.model;

public class ClassRule {
    private String RuleID="";
    private int RuleType=0;
    private int Divisor=0;
    private double RuleTypeValue=0.0;
    private String StoreID="";

    public String getRuleID() {
        return RuleID;
    }

    public void setRuleID(String ruleID) {
        RuleID = ruleID;
    }

    public int getRuleType() {
        return RuleType;
    }

    public void setRuleType(int ruleType) {
        RuleType = ruleType;
    }

    public int getDivisor() {
        return Divisor;
    }

    public void setDivisor(int divisor) {
        Divisor = divisor;
    }

    public double getRuleTypeValue() {
        return RuleTypeValue;
    }

    public void setRuleTypeValue(double ruleTypeValue) {
        RuleTypeValue = ruleTypeValue;
    }

    public String getStoreID() {
        return StoreID;
    }

    public void setStoreID(String storeID) {
        StoreID = storeID;
    }
}
