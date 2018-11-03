/**   
 * 
 * @Title: DemoThread09.java 
 * @Prject: DemoThread
 * @Package: com.liang.demo 
 * @author: yin.hl
 * @date: 2017年3月20日 下午10:55:51 
 * @version: V1.0   
 */
package com.mimaxueyuan.demo.base;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;


/**
 * AtomicXXX类保证原子性操作，但是不保证成员方法的原子性
 * @author: Kevin
 * @官网: 	www.mimaxueyuan.com
 * @Q Q群:	660567408
 * @Email:	mimaxueyuan@163.com
 * [每天进步一点点、人生带来大改变...]
 * [本代码对应视频地址:http://study.163.com/course/introduction/1004176043.htm]
 */
public class DemoThread16 implements Runnable{
	
	//原子类
	private static AtomicInteger sum = new AtomicInteger(0);
	
	//如果add方法是原子性的,那么每次的结果都是10的整数倍
	/*synchronized*/
	public synchronized static void add(){
		sum.addAndGet(1);
		try {
			Thread.sleep(1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		sum.addAndGet(9);
		System.out.println(sum);
	}
	
	@Override
	public void run() {
		add();
	}
	
	public static void main(String[] args) {
		//10个线程调用，每个线程得到10的倍数， 最终结果应该为100，才是正确的
		ExecutorService es = Executors.newFixedThreadPool(10);
		for(int i=0;i<10;i++){
			es.submit(new DemoThread16());
		}
		es.shutdown();
	}

	
}
