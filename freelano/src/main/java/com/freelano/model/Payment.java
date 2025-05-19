package com.freelano.model;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Payment {
    private int        id;
    private BigDecimal amount;
    private LocalDate  date;
    private String     status;

    // Getters & Setters
    public int getId()                     { return id; }
    public void setId(int id)              { this.id = id; }

    public BigDecimal getAmount()          { return amount; }
    public void setAmount(BigDecimal amt)  { this.amount = amt; }

    public LocalDate getDate()             { return date; }
    public void setDate(LocalDate date)    { this.date = date; }

    public String getStatus()              { return status; }
    public void setStatus(String status)   { this.status = status; }
}
