package dev.cstodd.letsgetmarried;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(path="/rest")
public class MainController {
    // List Beans
    @Autowired
    private guestsRepository guestsRepository;

    @PostMapping(path="/login")
    public @ResponseBody boolean loginCheck (@RequestParam String loginCode) {
        return true;
    }

    @PostMapping(path="/addGuest")
    public @ResponseBody String addGuest (@RequestParam String name, @RequestParam Integer guestType, @RequestParam Integer invitedGuests, @RequestParam String email, @RequestParam String loginCode) {
        
        guests newGuest = new guests();

        newGuest.setName(name);
        newGuest.setGuestTypeId(guestType);
        newGuest.setInvitedGuests(invitedGuests);
        newGuest.setEmail(email);
        newGuest.setLoginCode(loginCode);

        guestsRepository.save(newGuest);
        
        return "Success";
    }

    @GetMapping(path="/getGuests")
    public @ResponseBody Iterable<guests> getAllGuests() {
        return guestsRepository.findAll();
    }

}
