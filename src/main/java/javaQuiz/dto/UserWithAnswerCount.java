package javaQuiz.dto;
import javaQuiz.model.Quizuser;

//@Entity(name="user_with_answer_count") //radi samo za prave tabele u bazi 
public class UserWithAnswerCount  {

	private Quizuser user;
	private int answerCount;
	
	public Quizuser getUser() {
		return user;
	}
	public void setUser(Quizuser user) {
		this.user = user;
	}
	public int getAnswerCount() {
		return answerCount;
	}
	public void setAnswerCount(int answerCount) {
		this.answerCount = answerCount;
	}
}
