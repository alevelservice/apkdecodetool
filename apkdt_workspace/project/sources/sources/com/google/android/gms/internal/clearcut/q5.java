package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class q5 {

    /* renamed from: f, reason: collision with root package name */
    private static HashMap<String, String> f11536f;

    /* renamed from: k, reason: collision with root package name */
    private static Object f11541k;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f11542l;

    /* renamed from: a, reason: collision with root package name */
    private static final Uri f11531a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b, reason: collision with root package name */
    private static final Uri f11532b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f11533c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f11534d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f11535e = new AtomicBoolean();

    /* renamed from: g, reason: collision with root package name */
    private static final HashMap<String, Boolean> f11537g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private static final HashMap<String, Integer> f11538h = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private static final HashMap<String, Long> f11539i = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    private static final HashMap<String, Float> f11540j = new HashMap<>();
    private static String[] m = new String[0];

    public static long a(ContentResolver contentResolver, String str, long j2) {
        Object b2 = b(contentResolver);
        long j3 = 0;
        Long l2 = (Long) a((HashMap<String, long>) f11539i, str, 0L);
        if (l2 != null) {
            return l2.longValue();
        }
        String a2 = a(contentResolver, str, (String) null);
        if (a2 != null) {
            try {
                long parseLong = Long.parseLong(a2);
                l2 = Long.valueOf(parseLong);
                j3 = parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        a(b2, f11539i, str, l2);
        return j3;
    }

    private static <T> T a(HashMap<String, T> hashMap, String str, T t) {
        synchronized (q5.class) {
            if (!hashMap.containsKey(str)) {
                return null;
            }
            T t2 = hashMap.get(str);
            if (t2 == null) {
                t2 = t;
            }
            return t2;
        }
    }

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (q5.class) {
            a(contentResolver);
            Object obj = f11541k;
            if (f11536f.containsKey(str)) {
                String str3 = f11536f.get(str);
                if (str3 == null) {
                    str3 = null;
                }
                return str3;
            }
            for (String str4 : m) {
                if (str.startsWith(str4)) {
                    if (!f11542l || f11536f.isEmpty()) {
                        f11536f.putAll(a(contentResolver, m));
                        f11542l = true;
                        if (f11536f.containsKey(str)) {
                            String str5 = f11536f.get(str);
                            if (str5 == null) {
                                str5 = null;
                            }
                            return str5;
                        }
                    }
                    return null;
                }
            }
            Cursor query = contentResolver.query(f11531a, null, null, new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        String string = query.getString(1);
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        a(obj, str, string);
                        if (string == null) {
                            string = null;
                        }
                        return string;
                    }
                } finally {
                    if (query != null) {
                        query.close();
                    }
                }
            }
            a(obj, str, (String) null);
            if (query != null) {
                query.close();
            }
            return null;
        }
    }

    private static Map<String, String> a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f11532b, null, null, strArr, null);
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

    private static void a(ContentResolver contentResolver) {
        if (f11536f == null) {
            f11535e.set(false);
            f11536f = new HashMap<>();
            f11541k = new Object();
            f11542l = false;
            contentResolver.registerContentObserver(f11531a, true, new r5(null));
            return;
        }
        if (f11535e.getAndSet(false)) {
            f11536f.clear();
            f11537g.clear();
            f11538h.clear();
            f11539i.clear();
            f11540j.clear();
            f11541k = new Object();
            f11542l = false;
        }
    }

    private static void a(Object obj, String str, String str2) {
        synchronized (q5.class) {
            if (obj == f11541k) {
                f11536f.put(str, str2);
            }
        }
    }

    private static <T> void a(Object obj, HashMap<String, T> hashMap, String str, T t) {
        synchronized (q5.class) {
            if (obj == f11541k) {
                hashMap.put(str, t);
                f11536f.remove(str);
            }
        }
    }

    public static boolean a(ContentResolver contentResolver, String str, boolean z) {
        Object b2 = b(contentResolver);
        Boolean bool = (Boolean) a(f11537g, str, Boolean.valueOf(z));
        if (bool != null) {
            return bool.booleanValue();
        }
        String a2 = a(contentResolver, str, (String) null);
        if (a2 != null && !a2.equals("")) {
            if (f11533c.matcher(a2).matches()) {
                bool = true;
                z = true;
            } else if (f11534d.matcher(a2).matches()) {
                bool = false;
                z = false;
            } else {
                String str2 = "attempt to read gservices key " + str + " (value \"" + a2 + "\") as boolean";
            }
        }
        a(b2, f11537g, str, bool);
        return z;
    }

    private static Object b(ContentResolver contentResolver) {
        Object obj;
        synchronized (q5.class) {
            a(contentResolver);
            obj = f11541k;
        }
        return obj;
    }
}
