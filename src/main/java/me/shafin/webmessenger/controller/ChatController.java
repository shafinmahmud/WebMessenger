package me.shafin.webmessenger.controller;

import java.util.Date;

import org.slf4j.*;
import org.springframework.messaging.handler.annotation.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import me.shafin.webmessenger.dto.*;

@Controller
@RequestMapping("/")
public class ChatController {

    private Logger logger = LoggerFactory.getLogger(getClass());
    
//    @RequestMapping("/")
//    public String viewApplication() {
////      System.out.println("this is GET point");
//        return "login";
//    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String viewMessenger() {
     // System.out.println("this is GET point");
        return "messenger";
    }

    @MessageMapping("/chat")
    @SendTo("/topic/message")
    public OutputMessage sendMessage(Message message) {
       // System.out.println("okay I got messeage: " + message.toString());
        logger.info("Message sent");
        return new OutputMessage(message, new Date());
    }
}
