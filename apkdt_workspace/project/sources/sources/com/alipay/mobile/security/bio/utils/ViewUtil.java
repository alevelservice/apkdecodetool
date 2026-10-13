package com.alipay.mobile.security.bio.utils;

import android.view.View;

/* loaded from: classes.dex */
public class ViewUtil {
    public static <T> T findView(View view, int i2, Class<T> cls) {
        try {
            return (T) view.findViewById(i2);
        } catch (Exception e2) {
            e2.toString();
            return null;
        }
    }
}
