package net.devstudy.resume.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import org.apache.commons.lang.WordUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.util.ReflectionUtils;

import com.google.common.base.Objects;
import com.restfb.types.User;

import net.devstudy.resume.entity.AccountEntity;
import net.devstudy.resume.form.SignUpForm;


public class DataUtil {

	public static String normalizeName(String name) {
		return name.trim().toLowerCase();
	}

	public static String capitalizeName(String name) {
		return WordUtils.capitalize(normalizeName(name));
	}

	public static String generateAccountUid(SignUpForm profile) {
		return normalizeName(profile.getFirstName()) + UID_DELIMETER + normalizeName(profile.getLastName());
	}
	
	public static String generateAccountUidFaceBook(User user) {
		return normalizeName(user.getFirstName()) + UID_DELIMETER + normalizeName(user.getLastName());
	}

	public static String regenerateUidWithRandomSuffix(String baseUid, String alphabet, int letterCount) {
		return baseUid + UID_DELIMETER + generateRandomSuffix(alphabet, letterCount);
	}

	public static String generateRandomSuffix(String alphabet, int letterCount) {
		Random r = new Random();
		StringBuilder uid = new StringBuilder();
		for (int i = 0; i < letterCount; i++) {
			uid.append(alphabet.charAt(r.nextInt(alphabet.length())));
		}
		return uid.toString();
	}

	private static final String UID_DELIMETER = "-";
	
	
	public static <T extends AccountEntity> String getCollectionName(Class<T> clazz) {
		String className = clazz.getSimpleName().toLowerCase();
		if(className.endsWith("y")) {
			className = className.substring(0, className.length()-1)+"ie";
		}
		return className+"s";
	}
	
	public static void removeEmptyElements(Collection<?> collection) {
		Iterator<?> it = collection.iterator();
		while(it.hasNext()){
			Object element = it.next();
			if(element == null || isAllFieldsNull(element)) {
				it.remove();
			}
		}
	}
	private static boolean isAllFieldsNull(Object element) {
		Field[] fields = element.getClass().getDeclaredFields();
		for(Field field : fields) {
			ReflectionUtils.makeAccessible(field);
			if(!Modifier.isStatic(field.getModifiers()) && ReflectionUtils.getField(field, element) != null) {
				return false;
			}
		}
		return true;
	}
	public static boolean areListsEqual(final List<?> a, final List<?> b) {
		if (a.size() != b.size()) {
			return false;
		}
		for (int i = 0; i < a.size(); i++) {
			if(!Objects.equal(a.get(i), b.get(i))) {
				return false;
			}
		}
		return true;
	}
	public static Object readProperty(Object obj, String propertyName) {
		try {
			return BeanUtils.getPropertyDescriptor(obj.getClass(), propertyName).getReadMethod().invoke(obj);
		} catch (IllegalAccessException | InvocationTargetException | RuntimeException e) {
			throw new IllegalArgumentException("Can't read property: '"+propertyName+"' from object:'"+obj.getClass()+"': "+e.getMessage(), e);
		}
	}
	
	public static void writeProperty(Object obj, String propertyName, Object value) {
		try {
			BeanUtils.getPropertyDescriptor(obj.getClass(), propertyName).getWriteMethod().invoke(obj, value);
		} catch (IllegalAccessException | InvocationTargetException e) {
			throw new IllegalArgumentException("Can't read property: '"+propertyName+"' from object:'"+obj.getClass()+"': "+e.getMessage(), e);
		}
	}
}
