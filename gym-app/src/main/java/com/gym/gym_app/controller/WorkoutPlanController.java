package com.gym.gym_app.controller;

import com.gym.gym_app.entity.Member;
import com.gym.gym_app.entity.WorkoutPlan;
import com.gym.gym_app.service.MemberService;
import com.gym.gym_app.service.WorkoutPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class WorkoutPlanController {

    @Autowired
    private WorkoutPlanService workoutPlanService;

    @Autowired
    private MemberService memberService;

    // Show form
    @GetMapping("/addPlan")
    public String showForm(Model model) {
        model.addAttribute("plan", new WorkoutPlan());
        model.addAttribute("members", memberService.getAllMembers());
        return "add-plan";
    }

    // Save plan
    @PostMapping("/savePlan")
    public String savePlan(@ModelAttribute WorkoutPlan plan,
                           @RequestParam("memberId") Long memberId) {

        Member member = new Member();
        member.setId(memberId);
        plan.setMember(member);

        workoutPlanService.saveWorkoutPlan(plan);
        return "redirect:/plans";
    }

    // List with JOIN
    @GetMapping("/plans")
    public String listPlans(Model model) {
        model.addAttribute("plans", workoutPlanService.getPlansWithMembers());
        return "plans";
    }
}