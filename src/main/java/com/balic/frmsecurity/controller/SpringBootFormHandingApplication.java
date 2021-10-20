package com.balic.frmsecurity.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


//https://www.javainuse.com/spring/boot_form_security

@SpringBootApplication
@ComponentScan(basePackages="com.balic")
public class SpringBootFormHandingApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootFormHandingApplication.class, args);
	}
}