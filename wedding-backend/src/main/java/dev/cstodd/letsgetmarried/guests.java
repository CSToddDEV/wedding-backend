package dev.cstodd.letsgetmarried;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class guests {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String name;

    private Integer guest_type_id;

    private Integer invited_guests;

    private String email;

    private String login_code;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getGuestTypeId() {
        return guest_type_id;
    }

    public void setGuestTypeId(Integer guestTypeId) {
        this.guest_type_id = guestTypeId;
    }

    public Integer getInvitedGuests() {
        return invited_guests;
    }

    public void setInvitedGuests(Integer invitedGuests) {
        this.invited_guests = invitedGuests;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLoginCode() {
        return login_code;
    }

    public void setLoginCode(String loginCode) {
        this.login_code = loginCode;
    }
    
}
