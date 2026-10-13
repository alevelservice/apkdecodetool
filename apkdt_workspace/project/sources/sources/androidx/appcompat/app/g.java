package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.LongSparseArray;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;
import java.util.Map;

/* compiled from: ResourcesFlusher.java */
/* loaded from: classes.dex */
class g {

    /* renamed from: a, reason: collision with root package name */
    private static Field f834a;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f835b;

    /* renamed from: c, reason: collision with root package name */
    private static Class<?> f836c;

    /* renamed from: d, reason: collision with root package name */
    private static boolean f837d;

    /* renamed from: e, reason: collision with root package name */
    private static Field f838e;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f839f;

    /* renamed from: g, reason: collision with root package name */
    private static Field f840g;

    /* renamed from: h, reason: collision with root package name */
    private static boolean f841h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(@NonNull Resources resources) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return;
        }
        if (i2 >= 24) {
            d(resources);
        } else if (i2 >= 23) {
            c(resources);
        } else if (i2 >= 21) {
            b(resources);
        }
    }

    @RequiresApi(21)
    private static void b(@NonNull Resources resources) {
        Map map;
        if (!f835b) {
            try {
                f834a = Resources.class.getDeclaredField("mDrawableCache");
                f834a.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f835b = true;
        }
        Field field = f834a;
        if (field != null) {
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException unused2) {
                map = null;
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    @RequiresApi(23)
    private static void c(@NonNull Resources resources) {
        if (!f835b) {
            try {
                f834a = Resources.class.getDeclaredField("mDrawableCache");
                f834a.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f835b = true;
        }
        Object obj = null;
        Field field = f834a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
        }
        if (obj == null) {
            return;
        }
        a(obj);
    }

    @RequiresApi(24)
    private static void d(@NonNull Resources resources) {
        Object obj;
        if (!f841h) {
            try {
                f840g = Resources.class.getDeclaredField("mResourcesImpl");
                f840g.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f841h = true;
        }
        Field field = f840g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException unused2) {
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f835b) {
            try {
                f834a = obj.getClass().getDeclaredField("mDrawableCache");
                f834a.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            f835b = true;
        }
        Field field2 = f834a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException unused4) {
            }
        }
        if (obj2 != null) {
            a(obj2);
        }
    }

    @RequiresApi(16)
    private static void a(@NonNull Object obj) {
        LongSparseArray longSparseArray;
        if (!f837d) {
            try {
                f836c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException unused) {
            }
            f837d = true;
        }
        Class<?> cls = f836c;
        if (cls == null) {
            return;
        }
        if (!f839f) {
            try {
                f838e = cls.getDeclaredField("mUnthemedEntries");
                f838e.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
            }
            f839f = true;
        }
        Field field = f838e;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException unused3) {
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
