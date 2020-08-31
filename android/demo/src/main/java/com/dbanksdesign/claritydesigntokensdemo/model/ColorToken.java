package com.dbanksdesign.claritydesigntokensdemo.model;

public class ColorToken extends DesignToken {
    public int value;

    public ColorToken(String name, String type, int id, int value) {
        super(name, type, id);
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }
}
