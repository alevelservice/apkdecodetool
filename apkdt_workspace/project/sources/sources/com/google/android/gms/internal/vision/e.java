package com.google.android.gms.internal.vision;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class e {

    /* renamed from: f, reason: collision with root package name */
    private static HashMap<String, String> f12336f;

    /* renamed from: k, reason: collision with root package name */
    private static Object f12341k;

    /* renamed from: l, reason: collision with root package name */
    private static boolean f12342l;

    /* renamed from: a, reason: collision with root package name */
    public static final Uri f12331a = Uri.parse("content://com.google.android.gsf.gservices");

    /* renamed from: b, reason: collision with root package name */
    private static final Uri f12332b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* renamed from: c, reason: collision with root package name */
    public static final Pattern f12333c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    /* renamed from: d, reason: collision with root package name */
    public static final Pattern f12334d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f12335e = new AtomicBoolean();

    /* renamed from: g, reason: collision with root package name */
    private static final HashMap<String, Boolean> f12337g = new HashMap<>();

    /* renamed from: h, reason: collision with root package name */
    private static final HashMap<String, Integer> f12338h = new HashMap<>();

    /* renamed from: i, reason: collision with root package name */
    private static final HashMap<String, Long> f12339i = new HashMap<>();

    /* renamed from: j, reason: collision with root package name */
    private static final HashMap<String, Float> f12340j = new HashMap<>();
    private static String[] m = new String[0];

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (e.class) {
            if (f12336f == null) {
                f12335e.set(false);
                f12336f = new HashMap<>();
                f12341k = new Object();
                f12342l = false;
                contentResolver.registerContentObserver(f12331a, true, new h(null));
            } else if (f12335e.getAndSet(false)) {
                f12336f.clear();
                f12337g.clear();
                f12338h.clear();
                f12339i.clear();
                f12340j.clear();
                f12341k = new Object();
                f12342l = false;
            }
            Object obj = f12341k;
            if (f12336f.containsKey(str)) {
                String str3 = f12336f.get(str);
                if (str3 == null) {
                    str3 = null;
                }
                return str3;
            }
            for (String str4 : m) {
                if (str.startsWith(str4)) {
                    if (!f12342l || f12336f.isEmpty()) {
                        f12336f.putAll(a(contentResolver, m));
                        f12342l = true;
                        if (f12336f.containsKey(str)) {
                            String str5 = f12336f.get(str);
                            if (str5 == null) {
                                str5 = null;
                            }
                            return str5;
                        }
                    }
                    return null;
                }
            }
            Cursor query = contentResolver.query(f12331a, null, null, new String[]{str}, null);
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
        synchronized (e.class) {
            if (obj == f12341k) {
                f12336f.put(str, str2);
            }
        }
    }

    private static Map<String, String> a(ContentResolver contentResolver, String... strArr) {
        Cursor query = contentResolver.query(f12332b, null, null, strArr, null);
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
