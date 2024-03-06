package javaQuiz.dto;

import javaQuiz.model.Quizuser;

public interface UserWithAnswerCountProjection {
	Quizuser getUser();
    int getAnswerCount();
}
