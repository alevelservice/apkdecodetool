package com.mapbox.mapboxsdk.utils;

import android.graphics.Typeface;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.mapbox.mapboxsdk.log.Logger;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: FontUtils.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final List<String> f16376a = new ArrayList();

    static {
        f16376a.add("sans-serif");
        f16376a.add("serif");
        f16376a.add("monospace");
    }

    public static String a(String... strArr) {
        List<String> list;
        if (strArr == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            list = a();
        } else {
            list = f16376a;
        }
        for (String str : strArr) {
            if (list.contains(str)) {
                return str;
            }
        }
        Logger.i("Mbgl-FontUtils", String.format("Couldn't map font family for local ideograph, using %s instead", "sans-serif"));
        return "sans-serif";
    }

    @RequiresApi(21)
    private static List<String> a() {
        ArrayList arrayList = new ArrayList();
        try {
            Typeface create = Typeface.create(Typeface.DEFAULT, 0);
            Field declaredField = Typeface.class.getDeclaredField("sSystemFontMap");
            declaredField.setAccessible(true);
            arrayList.addAll(((Map) declaredField.get(create)).keySet());
        } catch (Exception e2) {
            Logger.e("Mbgl-FontUtils", "Couldn't load fonts from Typeface", e2);
            com.mapbox.mapboxsdk.d.a("Couldn't load fonts from Typeface", e2);
        }
        return arrayList;
    }
}
