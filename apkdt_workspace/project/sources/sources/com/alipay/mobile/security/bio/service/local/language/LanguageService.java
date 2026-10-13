package com.alipay.mobile.security.bio.service.local.language;

import com.alipay.mobile.security.bio.service.local.LocalService;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class LanguageService extends LocalService {
    public int getCurrentLanguage() {
        StringBuilder sb;
        int i2 = Language.UNKNOWN.value;
        try {
            try {
                Class<?> cls = Class.forName("com.alipay.mobile.framework.locale.LocaleHelper");
                Method method = cls.getMethod("getInstance", new Class[0]);
                method.setAccessible(true);
                Object invoke = method.invoke(cls, new Object[0]);
                Method method2 = cls.getMethod("getCurrentLanguage", new Class[0]);
                method2.setAccessible(true);
                i2 = ((Integer) method2.invoke(invoke, new Object[0])).intValue();
                sb = new StringBuilder();
            } catch (Exception e2) {
                String str = "Failed to getCurrentLanguage() : " + e2.getMessage();
                sb = new StringBuilder();
            }
            sb.append("getCurrentLanguage() : language=");
            sb.append(i2);
            sb.toString();
            return i2;
        } catch (Throwable th) {
            String str2 = "getCurrentLanguage() : language=" + i2;
            throw th;
        }
    }
}
