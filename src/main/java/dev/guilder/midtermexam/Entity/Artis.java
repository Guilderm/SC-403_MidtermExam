package dev.guilder.midtermexam.Entity;

import jakarta.persistence.*;

@Entity
@Table(name="Artis", schema = "ITicket")
public class Artis {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "LocationID", nullable = false)
    private Long ArtisID;

    private String StageName ;
    private String FirstName ;
    private String LastName ;
    private String PhoneNumber ;
}
