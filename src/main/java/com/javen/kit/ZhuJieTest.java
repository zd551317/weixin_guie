/**
 * ZhuJieTest.java 2017年12月19日
 *
 * @Copyright 深圳超群高科技有限公司 
 * 广东省深圳市南山区科技园清华信息港C栋608， 中国
 * 保留所有权利。 
 * 
 * 本软件是深圳超群高科技有限公司的机密和专有信息，
 * 您不得披露该保密信息，并只能按照您与深圳超群高科技有限公司签订的许可协议中的条款使用。
 */
package com.javen.kit;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @描述: 
 * @作者: 刘斐
 * @时间: 2017年12月19日 下午3:30:19
 * @版本: 1.0
 */
@Documented
@Target(ElementType.METHOD)
@Inherited
@Retention(RetentionPolicy.CLASS)
public @interface ZhuJieTest {

}
