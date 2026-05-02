package com.gym.gym_app.repository;

import com.gym.gym_app.entity.WorkoutPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface WorkoutPlanRepository extends JpaRepository<WorkoutPlan, Long> {

    // CUSTOM JOIN QUERY 
    @Query("SELECT w FROM WorkoutPlan w JOIN w.member m")
    List<WorkoutPlan> findAllWithMembers();
}