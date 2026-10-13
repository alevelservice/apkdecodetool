package a.i.h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: TypefaceCompatApi21Impl.java */
@RequiresApi(21)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class e extends j {

    /* renamed from: b, reason: collision with root package name */
    private static Class<?> f302b = null;

    /* renamed from: c, reason: collision with root package name */
    private static Constructor<?> f303c = null;

    /* renamed from: d, reason: collision with root package name */
    private static Method f304d = null;

    /* renamed from: e, reason: collision with root package name */
    private static Method f305e = null;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f306f = false;

    private static void a() {
        Method method;
        Class<?> cls;
        Method method2;
        if (f306f) {
            return;
        }
        f306f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            e2.getClass().getName();
            method = null;
            cls = null;
            method2 = null;
        }
        f303c = constructor;
        f302b = cls;
        f304d = method2;
        f305e = method;
    }

    private static Object b() {
        a();
        try {
            return f303c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private File a(@NonNull ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static Typeface a(Object obj) {
        a();
        try {
            Object newInstance = Array.newInstance(f302b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f305e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a(Object obj, String str, int i2, boolean z) {
        a();
        try {
            return ((Boolean) f304d.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // a.i.h.j
    public Typeface a(Context context, CancellationSignal cancellationSignal, @NonNull b.f[] fVarArr, int i2) {
        if (fVarArr.length < 1) {
            return null;
        }
        b.f a2 = a(fVarArr, i2);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a2.c(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                File a3 = a(openFileDescriptor);
                if (a3 != null && a3.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(a3);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface a4 = super.a(context, fileInputStream);
                    fileInputStream.close();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return a4;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // a.i.h.j
    public Typeface a(Context context, FontResourcesParserCompat.b bVar, Resources resources, int i2) {
        Object b2 = b();
        for (FontResourcesParserCompat.c cVar : bVar.a()) {
            File a2 = k.a(context);
            if (a2 == null) {
                return null;
            }
            try {
                if (!k.a(a2, resources, cVar.b())) {
                    return null;
                }
                if (!a(b2, a2.getPath(), cVar.e(), cVar.f())) {
                    return null;
                }
                a2.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                a2.delete();
            }
        }
        return a(b2);
    }
}
