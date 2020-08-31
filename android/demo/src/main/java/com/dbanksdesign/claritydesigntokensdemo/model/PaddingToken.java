package com.dbanksdesign.claritydesigntokensdemo.model;

public class PaddingToken extends DesignToken {
    public float value;

    public PaddingToken(String name, String type, int id, float value) {
        super(name, type, id);
        this.value = value;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }
}
