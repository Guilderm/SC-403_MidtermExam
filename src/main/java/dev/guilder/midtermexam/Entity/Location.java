package dev.guilder.midtermexam.Entity;

import jakarta.persistence.*;
import org.apache.tomcat.jni.Address;

import java.io.Serializable;

@Entity
@Table(name="location", schema = "ITicket")
public class Location implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "LocationID", nullable = false)

    private Long LocationID;
    private String Name;
    private int MaximumOccupancy;
    private String Address;
}
