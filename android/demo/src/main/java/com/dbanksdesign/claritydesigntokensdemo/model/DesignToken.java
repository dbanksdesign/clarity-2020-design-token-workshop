package com.dbanksdesign.claritydesigntokensdemo.model;

public class DesignToken {
    public String name;
    public String type;
    public int id;

    public DesignToken(String name, String type, int id) {
        this.name = name;
        this.id = id;
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }
}
