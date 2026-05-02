package com.gym.gym_app.service;

import com.gym.gym_app.entity.WorkoutPlan;
import com.gym.gym_app.repository.WorkoutPlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WorkoutPlanService {

    @Autowired
    private WorkoutPlanRepository workoutPlanRepository;

    // Create
    public WorkoutPlan saveWorkoutPlan(WorkoutPlan plan) {
        return workoutPlanRepository.save(plan);
    }

    // Read
    public List<WorkoutPlan> getAllPlans() {
        return workoutPlanRepository.findAll();
    }

    // JOIN QUERY CALL
    public List<WorkoutPlan> getPlansWithMembers() {
        return workoutPlanRepository.findAllWithMembers();
    }

    // Update
    public WorkoutPlan updateWorkoutPlan(WorkoutPlan plan) {
        return workoutPlanRepository.save(plan);
    }
}