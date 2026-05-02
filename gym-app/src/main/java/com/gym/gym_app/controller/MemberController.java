package com.gym.gym_app.controller;

import com.gym.gym_app.entity.Member;
import com.gym.gym_app.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    // Show form to add member
    @GetMapping("/addMember")
    public String showForm(Model model) {
        model.addAttribute("member", new Member());
        return "add-member";
    }

    // Save member
    @PostMapping("/saveMember")
    public String saveMember(@ModelAttribute Member member) {
        memberService.saveMember(member);
        return "redirect:/members";
    }

    // Show all members
    @GetMapping("/members")
    public String listMembers(Model model) {
        List<Member> members = memberService.getAllMembers();
        model.addAttribute("members", members);
        return "members";
    }

    // Edit member
    @GetMapping("/editMember/{id}")
    public String editMember(@PathVariable Long id, Model model) {
    Member member = memberService.getAllMembers()
                                 .stream()
                                 .filter(m -> m.getId().equals(id))
                                 .findFirst()
                                 .orElse(null);

    model.addAttribute("member", member);
    return "add-member";
    
    }

    // Delete member
    @GetMapping("/deleteMember/{id}")
    public String deleteMember(@PathVariable Long id) {
        memberService.deleteMember(id);
    return "redirect:/members";
    }
    
    // Home 
    @GetMapping("/")
    public String home() {
        return "home";
    }

}