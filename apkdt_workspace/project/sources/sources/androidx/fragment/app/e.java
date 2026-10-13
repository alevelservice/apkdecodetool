package androidx.fragment.app;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;

/* compiled from: FragmentFactory.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    private static final a.e.g<String, Class<?>> f2189a = new a.e.g<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return Fragment.class.isAssignableFrom(c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @NonNull
    private static Class<?> c(@NonNull ClassLoader classLoader, @NonNull String str) {
        Class<?> cls = f2189a.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        f2189a.put(str, cls2);
        return cls2;
    }

    @NonNull
    public static Class<? extends Fragment> d(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return c(classLoader, str);
        } catch (ClassCastException e2) {
            throw new Fragment.e("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e2);
        } catch (ClassNotFoundException e3) {
            throw new Fragment.e("Unable to instantiate fragment " + str + ": make sure class name exists", e3);
        }
    }

    @NonNull
    public Fragment a(@NonNull ClassLoader classLoader, @NonNull String str) {
        try {
            return d(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e2) {
            throw new Fragment.e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (InstantiationException e3) {
            throw new Fragment.e("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e3);
        } catch (NoSuchMethodException e4) {
            throw new Fragment.e("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e4);
        } catch (InvocationTargetException e5) {
            throw new Fragment.e("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e5);
        }
    }
}
