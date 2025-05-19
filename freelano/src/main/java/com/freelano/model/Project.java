package com.freelano.model;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Project {
    private int         id;
    private String      title;
    private String      description;
    private BigDecimal  budget;
    private LocalDate   deadline;
    private String      status;

    // Getters & Setters
    public int getId()                      { return id; }
    public void setId(int id)               { this.id = id; }

    public String getTitle()                { return title; }
    public void setTitle(String title)      { this.title = title; }

    public String getDescription()                  { return description; }
    public void setDescription(String description)  { this.description = description; }

    public BigDecimal getBudget()                 { return budget; }
    public void setBudget(BigDecimal budget)      { this.budget = budget; }

    public LocalDate getDeadline()                  { return deadline; }
    public void setDeadline(LocalDate deadline)     { this.deadline = deadline; }

    public String getStatus()                  { return status; }
    public void setStatus(String status)       { this.status = status; }
}
