package a.i.h;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.b;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: TypefaceCompatApi24Impl.java */
@RequiresApi(24)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
class f extends j {

    /* renamed from: b, reason: collision with root package name */
    private static final Class<?> f307b;

    /* renamed from: c, reason: collision with root package name */
    private static final Constructor<?> f308c;

    /* renamed from: d, reason: collision with root package name */
    private static final Method f309d;

    /* renamed from: e, reason: collision with root package name */
    private static final Method f310e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            e2.getClass().getName();
            cls = null;
            method = null;
            method2 = null;
        }
        f308c = constructor;
        f307b = cls;
        f309d = method2;
        f310e = method;
    }

    public static boolean a() {
        Method method = f309d;
        return f309d != null;
    }

    private static Object b() {
        try {
            return f308c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, boolean z) {
        try {
            return ((Boolean) f309d.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(f307b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f310e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // a.i.h.j
    @Nullable
    public Typeface a(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull b.f[] fVarArr, int i2) {
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        a.e.g gVar = new a.e.g();
        for (b.f fVar : fVarArr) {
            Uri c2 = fVar.c();
            ByteBuffer byteBuffer = (ByteBuffer) gVar.get(c2);
            if (byteBuffer == null) {
                byteBuffer = k.a(context, cancellationSignal, c2);
                gVar.put(c2, byteBuffer);
            }
            if (byteBuffer == null || !a(b2, byteBuffer, fVar.b(), fVar.d(), fVar.e())) {
                return null;
            }
        }
        Typeface a2 = a(b2);
        if (a2 == null) {
            return null;
        }
        return Typeface.create(a2, i2);
    }

    @Override // a.i.h.j
    @Nullable
    public Typeface a(Context context, FontResourcesParserCompat.b bVar, Resources resources, int i2) {
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        for (FontResourcesParserCompat.c cVar : bVar.a()) {
            ByteBuffer a2 = k.a(context, resources, cVar.b());
            if (a2 == null || !a(b2, a2, cVar.c(), cVar.e(), cVar.f())) {
                return null;
            }
        }
        return a(b2);
    }
}
