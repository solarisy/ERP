package com.wismay.erp.security.shiro;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.subject.support.SubjectThreadState;
import org.apache.shiro.util.ThreadState;
import org.mockito.Mockito;

/**
 * 在单元测试中的Shiro工具类，
 * 
 * @author Peter
 */
public class ShiroTestUtils {

	private static ThreadState threadState;

	/**
	 * 用Mockito快速创建一个已认证的用户.
	 */
	public static void mockSubject(Object principal) {
		Subject subject = Mockito.mock(Subject.class);
		Mockito.when(subject.isAuthenticated()).thenReturn(true);
		Mockito.when(subject.getPrincipal()).thenReturn(principal);

		bindSubject(subject);
	}

	/**
	 * 绑定Subject到当前线程.
	 */
	protected static void bindSubject(Subject subject) {
		clearSubject();
		threadState = new SubjectThreadState(subject);
		threadState.bind();
	}

	/**
	 * 清楚当前线程中的Subject.
	 */
	public static void clearSubject() {
		if (threadState != null) {
			threadState.clear();
			threadState = null;
		}
	}
}
