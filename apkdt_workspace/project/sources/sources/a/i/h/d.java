package a.i.h;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.e;
import androidx.core.provider.b;

/* compiled from: TypefaceCompat.java */
@SuppressLint({"NewApi"})
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static final j f300a;

    /* renamed from: b, reason: collision with root package name */
    private static final a.e.e<String, Typeface> f301b;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            f300a = new i();
        } else if (i2 >= 28) {
            f300a = new h();
        } else if (i2 >= 26) {
            f300a = new g();
        } else if (i2 >= 24 && f.a()) {
            f300a = new f();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f300a = new e();
        } else {
            f300a = new j();
        }
        f301b = new a.e.e<>(16);
    }

    private static String a(Resources resources, int i2, int i3) {
        return resources.getResourcePackageName(i2) + "-" + i2 + "-" + i3;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Typeface b(@NonNull Resources resources, int i2, int i3) {
        return f301b.b(a(resources, i2, i3));
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@NonNull Context context, @NonNull FontResourcesParserCompat.a aVar, @NonNull Resources resources, int i2, int i3, @Nullable e.a aVar2, @Nullable Handler handler, boolean z) {
        Typeface a2;
        if (aVar instanceof FontResourcesParserCompat.d) {
            FontResourcesParserCompat.d dVar = (FontResourcesParserCompat.d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.a() == 0) {
                z2 = true;
            }
            a2 = androidx.core.provider.b.a(context, dVar.b(), aVar2, handler, z2, z ? dVar.c() : -1, i3);
        } else {
            a2 = f300a.a(context, (FontResourcesParserCompat.b) aVar, resources, i3);
            if (aVar2 != null) {
                if (a2 != null) {
                    aVar2.a(a2, handler);
                } else {
                    aVar2.a(-3, handler);
                }
            }
        }
        if (a2 != null) {
            f301b.a(a(resources, i2, i3), a2);
        }
        return a2;
    }

    @Nullable
    private static Typeface b(Context context, Typeface typeface, int i2) {
        FontResourcesParserCompat.b a2 = f300a.a(typeface);
        if (a2 == null) {
            return null;
        }
        return f300a.a(context, a2, context.getResources(), i2);
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@NonNull Context context, @NonNull Resources resources, int i2, String str, int i3) {
        Typeface a2 = f300a.a(context, resources, i2, str, i3);
        if (a2 != null) {
            f301b.a(a(resources, i2, i3), a2);
        }
        return a2;
    }

    @Nullable
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull b.f[] fVarArr, int i2) {
        return f300a.a(context, cancellationSignal, fVarArr, i2);
    }

    @NonNull
    public static Typeface a(@NonNull Context context, @Nullable Typeface typeface, int i2) {
        Typeface b2;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (b2 = b(context, typeface, i2)) == null) ? Typeface.create(typeface, i2) : b2;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }
}
