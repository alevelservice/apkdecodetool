package a.i.h;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

/* compiled from: TypefaceCompatApi26Impl.java */
@RequiresApi(26)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class g extends e {

    /* renamed from: g, reason: collision with root package name */
    protected final Class<?> f311g;

    /* renamed from: h, reason: collision with root package name */
    protected final Constructor<?> f312h;

    /* renamed from: i, reason: collision with root package name */
    protected final Method f313i;

    /* renamed from: j, reason: collision with root package name */
    protected final Method f314j;

    /* renamed from: k, reason: collision with root package name */
    protected final Method f315k;

    /* renamed from: l, reason: collision with root package name */
    protected final Method f316l;
    protected final Method m;

    public g() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> a2 = a();
            constructor = e(a2);
            method2 = b(a2);
            method3 = c(a2);
            method4 = f(a2);
            method5 = a(a2);
            method = d(a2);
            cls = a2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            String str = "Unable to collect necessary methods for class " + e2.getClass().getName();
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f311g = cls;
        this.f312h = constructor;
        this.f313i = method2;
        this.f314j = method3;
        this.f315k = method4;
        this.f316l = method5;
        this.m = method;
    }

    private boolean a(Context context, Object obj, String str, int i2, int i3, int i4, @Nullable FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f313i.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean b() {
        Method method = this.f313i;
        return this.f313i != null;
    }

    @Nullable
    private Object c() {
        try {
            return this.f312h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    protected Method d(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Constructor<?> e(Class<?> cls) {
        return cls.getConstructor(new Class[0]);
    }

    protected Method f(Class<?> cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    private boolean c(Object obj) {
        try {
            return ((Boolean) this.f315k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private void b(Object obj) {
        try {
            this.f316l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    protected Method c(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    protected Method b(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    private boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, int i4) {
        try {
            return ((Boolean) this.f314j.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Integer.valueOf(i4))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    @Nullable
    protected Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f311g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // a.i.h.e, a.i.h.j
    @Nullable
    public Typeface a(Context context, FontResourcesParserCompat.b bVar, Resources resources, int i2) {
        if (!b()) {
            return super.a(context, bVar, resources, i2);
        }
        Object c2 = c();
        if (c2 == null) {
            return null;
        }
        for (FontResourcesParserCompat.c cVar : bVar.a()) {
            if (!a(context, c2, cVar.a(), cVar.c(), cVar.e(), cVar.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.d()))) {
                b(c2);
                return null;
            }
        }
        if (c(c2)) {
            return a(c2);
        }
        return null;
    }

    @Override // a.i.h.e, a.i.h.j
    @Nullable
    public Typeface a(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull b.f[] fVarArr, int i2) {
        Typeface a2;
        if (fVarArr.length < 1) {
            return null;
        }
        if (!b()) {
            b.f a3 = a(fVarArr, i2);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a3.c(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a3.d()).setItalic(a3.e()).build();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return build;
                } finally {
                }
            } catch (IOException unused) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> a4 = androidx.core.provider.b.a(context, fVarArr, cancellationSignal);
        Object c2 = c();
        if (c2 == null) {
            return null;
        }
        boolean z = false;
        for (b.f fVar : fVarArr) {
            ByteBuffer byteBuffer = a4.get(fVar.c());
            if (byteBuffer != null) {
                if (!a(c2, byteBuffer, fVar.b(), fVar.d(), fVar.e() ? 1 : 0)) {
                    b(c2);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            b(c2);
            return null;
        }
        if (c(c2) && (a2 = a(c2)) != null) {
            return Typeface.create(a2, i2);
        }
        return null;
    }

    @Override // a.i.h.j
    @Nullable
    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        if (!b()) {
            return super.a(context, resources, i2, str, i3);
        }
        Object c2 = c();
        if (c2 == null) {
            return null;
        }
        if (!a(context, c2, str, 0, -1, -1, null)) {
            b(c2);
            return null;
        }
        if (c(c2)) {
            return a(c2);
        }
        return null;
    }

    protected Class<?> a() {
        return Class.forName("android.graphics.FontFamily");
    }

    protected Method a(Class<?> cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }
}
