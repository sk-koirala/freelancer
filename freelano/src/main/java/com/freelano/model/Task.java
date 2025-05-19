package com.freelano.model;

import java.time.LocalDate;

public class Task {
    private int        id;
    private String     name;
    private String     description;
    private LocalDate  deadline;
    private String     status;
    private Integer    paymentId;   // FK to Payment

    // Getters & setters
    public int getId()                     { return id; }
    public void setId(int id)              { this.id = id; }

    public String getName()                { return name; }
    public void setName(String name)       { this.name = name; }

    public String getDescription()                 { return description; }
    public void setDescription(String description) { this.description = description; }

    public LocalDate getDeadline()                 { return deadline; }
    public void setDeadline(LocalDate deadline)    { this.deadline = deadline; }

    public String getStatus()                 { return status; }
    public void setStatus(String status)      { this.status = status; }

    public Integer getPaymentId()              { return paymentId; }
    public void setPaymentId(Integer paymentId){ this.paymentId = paymentId; }
}

