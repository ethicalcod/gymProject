package com.gym.gym_app.service;

import com.gym.gym_app.entity.Member;
import com.gym.gym_app.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    // Create
    public Member saveMember(Member member) {
        return memberRepository.save(member);
    }

    // Read
    public List<Member> getAllMembers() {
        return memberRepository.findAll();
    }

    // Update
    public Member updateMember(Member member) {
        return memberRepository.save(member);
    }

    // Delete
    public void deleteMember(Long id) {
        memberRepository.deleteById(id);
    }
}