package com.gym.gym_app;

import com.gym.gym_app.entity.Member;
import com.gym.gym_app.repository.MemberRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.ANY)
class MemberRepositoryTest {

    @Autowired
    private MemberRepository memberRepository;

    @Test
    void testSaveAndFindMembers() {
        Member m = new Member();
        m.setName("Test User");
        m.setAge(25);
        m.setMembershipType("Basic");

        memberRepository.save(m);

        List<Member> members = memberRepository.findAll();

        assertNotNull(members);
        assertTrue(members.size() > 0);
    }
}
