package dev.guilder.midtermexam.Entity;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table (name="Event", schema = "ITicket")
public class Event implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "eventid", nullable = false)
        private Long eventID;

    private String Name;
    private int Cost;
    private String Date;
    private int LocationID;
    private int ArtisID;

    public Long getEventID() {
        return eventID;
    }

    public void setEventID(Long eventID) {
        this.eventID = eventID;
    }
}



