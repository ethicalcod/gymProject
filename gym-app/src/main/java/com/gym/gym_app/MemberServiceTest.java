package com.gym.gym_app;

import com.gym.gym_app.entity.Member;
import com.gym.gym_app.repository.MemberRepository;
import com.gym.gym_app.service.MemberService;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.Arrays;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

class MemberServiceTest {

    @Mock
    private MemberRepository memberRepository;

    @InjectMocks
    private MemberService memberService;

    public MemberServiceTest() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void testGetAllMembers() {
        Member m1 = new Member();
        m1.setName("Aman");

        when(memberRepository.findAll()).thenReturn(Arrays.asList(m1));

        List<Member> members = memberService.getAllMembers();

        assertEquals(1, members.size());
        verify(memberRepository, times(1)).findAll();
    }

    @Test
    void testSaveMember() {
        Member m = new Member();
        m.setName("Rahul");

        memberService.saveMember(m);

        verify(memberRepository, times(1)).save(m);
    }
}