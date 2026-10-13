package com.alipay.zoloz.zface.utils;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ObjectUtil {
    private ObjectUtil() {
    }

    private static Map<String, Object> objectToObjectMap(Object obj) {
        if (obj == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        if (declaredFields == null || declaredFields.length == 0) {
            declaredFields = obj.getClass().getFields();
        }
        for (Field field : declaredFields) {
            field.setAccessible(true);
            hashMap.put(field.getName(), field.get(obj));
        }
        return hashMap;
    }

    public static HashMap<String, String> objectToStringMap(Object obj) {
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            Map<String, Object> objectToObjectMap = objectToObjectMap(obj);
            if (objectToObjectMap != null && !objectToObjectMap.isEmpty()) {
                for (Map.Entry<String, Object> entry : objectToObjectMap.entrySet()) {
                    hashMap.put(entry.getKey(), "" + entry.getValue());
                }
            }
        } catch (Throwable unused) {
        }
        return hashMap;
    }
}
