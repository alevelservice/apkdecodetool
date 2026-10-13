package androidx.core.content.res;

import a.i.m.i;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ResourcesCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* compiled from: ResourcesCompat.java */
        @RequiresApi(23)
        /* loaded from: classes.dex */
        static class a {

            /* renamed from: a, reason: collision with root package name */
            private static final Object f1813a = new Object();

            /* renamed from: b, reason: collision with root package name */
            private static Method f1814b;

            /* renamed from: c, reason: collision with root package name */
            private static boolean f1815c;

            static void a(@NonNull Resources.Theme theme) {
                synchronized (f1813a) {
                    if (!f1815c) {
                        try {
                            f1814b = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f1814b.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f1815c = true;
                    }
                    if (f1814b != null) {
                        try {
                            f1814b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f1814b = null;
                        }
                    }
                }
            }
        }

        /* compiled from: ResourcesCompat.java */
        @RequiresApi(29)
        /* renamed from: androidx.core.content.res.e$b$b, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0033b {
            static void a(@NonNull Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(@NonNull Resources.Theme theme) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                C0033b.a(theme);
            } else if (i2 >= 23) {
                a.a(theme);
            }
        }
    }

    @ColorInt
    public static int a(@NonNull Resources resources, @ColorRes int i2, @Nullable Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 23) {
            return resources.getColor(i2, theme);
        }
        return resources.getColor(i2);
    }

    @Nullable
    public static Drawable b(@NonNull Resources resources, @DrawableRes int i2, @Nullable Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            return resources.getDrawable(i2, theme);
        }
        return resources.getDrawable(i2);
    }

    /* compiled from: ResourcesCompat.java */
    /* loaded from: classes.dex */
    public static abstract class a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ResourcesCompat.java */
        /* renamed from: androidx.core.content.res.e$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public class RunnableC0032a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Typeface f1809e;

            RunnableC0032a(Typeface typeface) {
                this.f1809e = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.a(this.f1809e);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ResourcesCompat.java */
        /* loaded from: classes.dex */
        public class b implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ int f1811e;

            b(int i2) {
                this.f1811e = i2;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.a(this.f1811e);
            }
        }

        public abstract void a(int i2);

        public abstract void a(@NonNull Typeface typeface);

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public final void a(Typeface typeface, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new RunnableC0032a(typeface));
        }

        @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
        public final void a(int i2, @Nullable Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new b(i2));
        }
    }

    @Nullable
    public static Typeface a(@NonNull Context context, @FontRes int i2) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i2, new TypedValue(), 0, null, null, false);
    }

    public static void a(@NonNull Context context, @FontRes int i2, @NonNull a aVar, @Nullable Handler handler) {
        i.a(aVar);
        if (context.isRestricted()) {
            aVar.a(-4, handler);
        } else {
            a(context, i2, new TypedValue(), 0, aVar, handler, false);
        }
    }

    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public static Typeface a(@NonNull Context context, @FontRes int i2, TypedValue typedValue, int i3, @Nullable a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i2, typedValue, i3, aVar, null, true);
    }

    private static Typeface a(@NonNull Context context, int i2, TypedValue typedValue, int i3, @Nullable a aVar, @Nullable Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        Typeface a2 = a(context, resources, typedValue, i2, i3, aVar, handler, z);
        if (a2 != null || aVar != null) {
            return a2;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i2) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface a(@androidx.annotation.NonNull android.content.Context r13, android.content.res.Resources r14, android.util.TypedValue r15, int r16, int r17, @androidx.annotation.Nullable androidx.core.content.res.e.a r18, @androidx.annotation.Nullable android.os.Handler r19, boolean r20) {
        /*
            r2 = r14
            r0 = r15
            r3 = r16
            r4 = r17
            r8 = r18
            r9 = r19
            java.lang.CharSequence r1 = r0.string
            if (r1 == 0) goto L93
            java.lang.String r10 = r1.toString()
            java.lang.String r0 = "res/"
            boolean r0 = r10.startsWith(r0)
            r11 = 0
            r12 = -3
            if (r0 != 0) goto L22
            if (r8 == 0) goto L21
            r8.a(r12, r9)
        L21:
            return r11
        L22:
            android.graphics.Typeface r0 = a.i.h.d.b(r14, r3, r4)
            if (r0 == 0) goto L2e
            if (r8 == 0) goto L2d
            r8.a(r0, r9)
        L2d:
            return r0
        L2e:
            java.lang.String r0 = r10.toLowerCase()     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            java.lang.String r1 = ".xml"
            boolean r0 = r0.endsWith(r1)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            if (r0 == 0) goto L5b
            android.content.res.XmlResourceParser r0 = r14.getXml(r3)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            androidx.core.content.res.FontResourcesParserCompat$a r1 = androidx.core.content.res.FontResourcesParserCompat.a(r0, r14)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            if (r1 != 0) goto L4a
            if (r8 == 0) goto L49
            r8.a(r12, r9)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
        L49:
            return r11
        L4a:
            r0 = r13
            r2 = r14
            r3 = r16
            r4 = r17
            r5 = r18
            r6 = r19
            r7 = r20
            android.graphics.Typeface r0 = a.i.h.d.a(r0, r1, r2, r3, r4, r5, r6, r7)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            return r0
        L5b:
            r0 = r13
            android.graphics.Typeface r0 = a.i.h.d.a(r13, r14, r3, r10, r4)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            if (r8 == 0) goto L6b
            if (r0 == 0) goto L68
            r8.a(r0, r9)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
            goto L6b
        L68:
            r8.a(r12, r9)     // Catch: java.io.IOException -> L6c org.xmlpull.v1.XmlPullParserException -> L7d
        L6b:
            return r0
        L6c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Failed to read xml resource "
            r0.append(r1)
            r0.append(r10)
            r0.toString()
            goto L8d
        L7d:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Failed to parse xml resource "
            r0.append(r1)
            r0.append(r10)
            r0.toString()
        L8d:
            if (r8 == 0) goto L92
            r8.a(r12, r9)
        L92:
            return r11
        L93:
            android.content.res.Resources$NotFoundException r1 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "Resource \""
            r4.append(r5)
            java.lang.String r2 = r14.getResourceName(r3)
            r4.append(r2)
            java.lang.String r2 = "\" ("
            r4.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r16)
            r4.append(r2)
            java.lang.String r2 = ") is not a Font: "
            r4.append(r2)
            r4.append(r15)
            java.lang.String r0 = r4.toString()
            r1.<init>(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.e.a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.e$a, android.os.Handler, boolean):android.graphics.Typeface");
    }
}
