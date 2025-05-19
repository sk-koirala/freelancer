package com.freelano.model;

public class Rating {
    private int    id;
    private int    value;       // 1–5
    private String comment;
    private String details;

    public int getId()                    { return id; }
    public void setId(int id)             { this.id = id; }

    public int getValue()                 { return value; }
    public void setValue(int value)       { this.value = value; }

    public String getComment()            { return comment; }
    public void setComment(String comment){ this.comment = comment; }

    public String getDetails()                  { return details; }
    public void setDetails(String details)      { this.details = details; }
}

