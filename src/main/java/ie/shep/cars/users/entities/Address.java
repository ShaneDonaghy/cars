package ie.shep.cars.users;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Address {

    public Address() {}

    @Id
    private String id;

    @Column(name = "addr_l1")
    private String addrL1;

    @Column(name = "addr_l2")
    private String addrL2;

    @Column(name = "street")
    private String street;

    @Column(name = "city")
    private String city;

    @Column(name = "county")
    private String county;

    @Column(name = "country")
    private String country;

    @Column(name = "eircode")
    private String eircode;
}
