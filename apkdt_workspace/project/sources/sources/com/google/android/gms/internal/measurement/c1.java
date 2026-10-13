package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class c1 {

    /* renamed from: f, reason: collision with root package name */
    private static HashMap<String, String> f11792f;

    /* renamed from: k, reason: collision with root package name */
    private static Object f11797k;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f11798l;

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f11787a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b, reason: collision with root package name */
    private static final Uri f11788b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f11789c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f11790d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f11791e = new AtomicBoolean();

    /* renamed from: g, reason: collision with root package name */
    private static final HashMap<String, Boolean> f11793g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private static final HashMap<String, Integer> f11794h = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private static final HashMap<String, Long> f11795i = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    private static final HashMap<String, Float> f11796j = new HashMap<>();
    private static String[] m = new String[0];

    private static void a(ContentResolver contentResolver) {
        if (f11792f == null) {
            f11791e.set(false);
            f11792f = new HashMap<>();
            f11797k = new Object();
            f11798l = false;
            contentResolver.registerContentObserver(f11787a, true, new b1(null));
            return;
        }
        if (f11791e.getAndSet(false)) {
            f11792f.clear();
            f11793g.clear();
            f11794h.clear();
            f11795i.clear();
            f11796j.clear();
            f11797k = new Object();
            f11798l = false;
        }
    }

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (c1.class) {
            a(contentResolver);
            Object obj = f11797k;
            if (f11792f.containsKey(str)) {
                String str3 = f11792f.get(str);
                if (str3 == null) {
                    str3 = null;
                }
                return str3;
            }
            for (String str4 : m) {
                if (str.startsWith(str4)) {
                    if (!f11798l || f11792f.isEmpty()) {
                        f11792f.putAll(a(contentResolver, m));
                        f11798l = true;
                        if (f11792f.containsKey(str)) {
                            String str5 = f11792f.get(str);
                            if (str5 == null) {
                                str5 = null;
                            }
                            return str5;
                        }
                    }
                    return null;
                }
            }
            Cursor query = contentResolver.query(f11787a, null, null, new String[]{str}, null);
            if (query == null) {
                return null;
            }
            try {
                if (!query.moveToFirst()) {
                    a(obj, str, (String) null);
                    if (query != null) {
                        query.close();
                    }
                    return null;
                }
                String string = query.getString(1);
                if (string != null && string.equals(null)) {
                    string = null;
                }
                a(obj, str, string);
                if (string == null) {
                    string = null;
                }
                if (query != null) {
                    query.close();
                }
                return string;
            } finally {
                if (query != null) {
                    query.close();
                }
            }
        }
    }

    private static void a(Object obj, String str, String str2) {
        synchronized (c1.class) {
            if (obj == f11797k) {
                f11792f.put(str, str2);
            }
        }
    }

    private static Map<String, String> a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f11788b, null, null, strArr, null);
        TreeMap treeMap = new TreeMap();
        if (query == null) {
            return treeMap;
        }
        while (query.moveToNext()) {
            try {
                treeMap.put(query.getString(0), query.getString(1));
            } finally {
                query.close();
            }
        }
        return treeMap;
    }
}
