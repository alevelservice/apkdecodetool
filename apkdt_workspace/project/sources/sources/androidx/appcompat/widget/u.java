package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: ResourceManagerInternal.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class u {

    /* renamed from: i, reason: collision with root package name */
    private static u f1435i;

    /* renamed from: a, reason: collision with root package name */
    private WeakHashMap<Context, a.e.h<ColorStateList>> f1437a;

    /* renamed from: b, reason: collision with root package name */
    private a.e.g<String, d> f1438b;

    /* renamed from: c, reason: collision with root package name */
    private a.e.h<String> f1439c;

    /* renamed from: d, reason: collision with root package name */
    private final WeakHashMap<Context, a.e.d<WeakReference<Drawable.ConstantState>>> f1440d = new WeakHashMap<>(0);

    /* renamed from: e, reason: collision with root package name */
    private TypedValue f1441e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1442f;

    /* renamed from: g, reason: collision with root package name */
    private e f1443g;

    /* renamed from: h, reason: collision with root package name */
    private static final PorterDuff.Mode f1434h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j, reason: collision with root package name */
    private static final c f1436j = new c(6);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResourceManagerInternal.java */
    @RequiresApi(11)
    /* loaded from: classes.dex */
    public static class a implements d {
        a() {
        }

        @Override // androidx.appcompat.widget.u.d
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return androidx.appcompat.graphics.drawable.a.b(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class b implements d {
        b() {
        }

        @Override // androidx.appcompat.widget.u.d
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return a.p.a.a.c.a(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class c extends a.e.e<Integer, PorterDuffColorFilter> {
        public c(int i2) {
            super(i2);
        }

        private static int b(int i2, PorterDuff.Mode mode) {
            return ((i2 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
            return b(Integer.valueOf(b(i2, mode)));
        }

        PorterDuffColorFilter a(int i2, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return a((c) Integer.valueOf(b(i2, mode)), (Integer) porterDuffColorFilter);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public interface d {
        Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ResourceManagerInternal.java */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public interface e {
        ColorStateList a(@NonNull Context context, @DrawableRes int i2);

        PorterDuff.Mode a(int i2);

        Drawable a(@NonNull u uVar, @NonNull Context context, @DrawableRes int i2);

        boolean a(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable);

        boolean b(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ResourceManagerInternal.java */
    /* loaded from: classes.dex */
    public static class f implements d {
        f() {
        }

        @Override // androidx.appcompat.widget.u.d
        public Drawable a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return a.p.a.a.i.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public static synchronized u a() {
        u uVar;
        synchronized (u.class) {
            if (f1435i == null) {
                f1435i = new u();
                a(f1435i);
            }
            uVar = f1435i;
        }
        return uVar;
    }

    private Drawable c(@NonNull Context context, @DrawableRes int i2) {
        if (this.f1441e == null) {
            this.f1441e = new TypedValue();
        }
        TypedValue typedValue = this.f1441e;
        context.getResources().getValue(i2, typedValue, true);
        long a2 = a(typedValue);
        Drawable a3 = a(context, a2);
        if (a3 != null) {
            return a3;
        }
        e eVar = this.f1443g;
        Drawable a4 = eVar == null ? null : eVar.a(this, context, i2);
        if (a4 != null) {
            a4.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, a2, a4);
        }
        return a4;
    }

    private ColorStateList d(@NonNull Context context, @DrawableRes int i2) {
        a.e.h<ColorStateList> hVar;
        WeakHashMap<Context, a.e.h<ColorStateList>> weakHashMap = this.f1437a;
        if (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) {
            return null;
        }
        return hVar.a(i2);
    }

    private Drawable e(@NonNull Context context, @DrawableRes int i2) {
        int next;
        a.e.g<String, d> gVar = this.f1438b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        a.e.h<String> hVar = this.f1439c;
        if (hVar != null) {
            String a2 = hVar.a(i2);
            if ("appcompat_skip_skip".equals(a2) || (a2 != null && this.f1438b.get(a2) == null)) {
                return null;
            }
        } else {
            this.f1439c = new a.e.h<>();
        }
        if (this.f1441e == null) {
            this.f1441e = new TypedValue();
        }
        TypedValue typedValue = this.f1441e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long a3 = a(typedValue);
        Drawable a4 = a(context, a3);
        if (a4 != null) {
            return a4;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next == 2) {
                    String name = xml.getName();
                    this.f1439c.a(i2, name);
                    d dVar = this.f1438b.get(name);
                    if (dVar != null) {
                        a4 = dVar.a(context, xml, asAttributeSet, context.getTheme());
                    }
                    if (a4 != null) {
                        a4.setChangingConfigurations(typedValue.changingConfigurations);
                        a(context, a3, a4);
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            } catch (Exception unused) {
            }
        }
        if (a4 == null) {
            this.f1439c.a(i2, "appcompat_skip_skip");
        }
        return a4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList b(@NonNull Context context, @DrawableRes int i2) {
        ColorStateList d2;
        d2 = d(context, i2);
        if (d2 == null) {
            d2 = this.f1443g == null ? null : this.f1443g.a(context, i2);
            if (d2 != null) {
                a(context, i2, d2);
            }
        }
        return d2;
    }

    private static void a(@NonNull u uVar) {
        if (Build.VERSION.SDK_INT < 24) {
            uVar.a("vector", new f());
            uVar.a("animated-vector", new b());
            uVar.a("animated-selector", new a());
        }
    }

    private void b(@NonNull Context context) {
        if (this.f1442f) {
            return;
        }
        this.f1442f = true;
        Drawable a2 = a(context, a.a.l.a.abc_vector_test);
        if (a2 == null || !a(a2)) {
            this.f1442f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    public synchronized void a(e eVar) {
        this.f1443g = eVar;
    }

    public synchronized Drawable a(@NonNull Context context, @DrawableRes int i2) {
        return a(context, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(@NonNull Context context, @DrawableRes int i2, boolean z) {
        Drawable e2;
        b(context);
        e2 = e(context, i2);
        if (e2 == null) {
            e2 = c(context, i2);
        }
        if (e2 == null) {
            e2 = androidx.core.content.a.c(context, i2);
        }
        if (e2 != null) {
            e2 = a(context, i2, z, e2);
        }
        if (e2 != null) {
            p.b(e2);
        }
        return e2;
    }

    public synchronized void a(@NonNull Context context) {
        a.e.d<WeakReference<Drawable.ConstantState>> dVar = this.f1440d.get(context);
        if (dVar != null) {
            dVar.a();
        }
    }

    private static long a(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    private Drawable a(@NonNull Context context, @DrawableRes int i2, boolean z, @NonNull Drawable drawable) {
        ColorStateList b2 = b(context, i2);
        if (b2 != null) {
            if (p.a(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable i3 = androidx.core.graphics.drawable.a.i(drawable);
            androidx.core.graphics.drawable.a.a(i3, b2);
            PorterDuff.Mode a2 = a(i2);
            if (a2 == null) {
                return i3;
            }
            androidx.core.graphics.drawable.a.a(i3, a2);
            return i3;
        }
        e eVar = this.f1443g;
        if ((eVar == null || !eVar.b(context, i2, drawable)) && !a(context, i2, drawable) && z) {
            return null;
        }
        return drawable;
    }

    private synchronized Drawable a(@NonNull Context context, long j2) {
        a.e.d<WeakReference<Drawable.ConstantState>> dVar = this.f1440d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> a2 = dVar.a(j2);
        if (a2 != null) {
            Drawable.ConstantState constantState = a2.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            dVar.c(j2);
        }
        return null;
    }

    private synchronized boolean a(@NonNull Context context, long j2, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        a.e.d<WeakReference<Drawable.ConstantState>> dVar = this.f1440d.get(context);
        if (dVar == null) {
            dVar = new a.e.d<>();
            this.f1440d.put(context, dVar);
        }
        dVar.c(j2, new WeakReference<>(constantState));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable a(@NonNull Context context, @NonNull i0 i0Var, @DrawableRes int i2) {
        Drawable e2 = e(context, i2);
        if (e2 == null) {
            e2 = i0Var.a(i2);
        }
        if (e2 == null) {
            return null;
        }
        return a(context, i2, false, e2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable) {
        e eVar = this.f1443g;
        return eVar != null && eVar.a(context, i2, drawable);
    }

    private void a(@NonNull String str, @NonNull d dVar) {
        if (this.f1438b == null) {
            this.f1438b = new a.e.g<>();
        }
        this.f1438b.put(str, dVar);
    }

    PorterDuff.Mode a(int i2) {
        e eVar = this.f1443g;
        if (eVar == null) {
            return null;
        }
        return eVar.a(i2);
    }

    private void a(@NonNull Context context, @DrawableRes int i2, @NonNull ColorStateList colorStateList) {
        if (this.f1437a == null) {
            this.f1437a = new WeakHashMap<>();
        }
        a.e.h<ColorStateList> hVar = this.f1437a.get(context);
        if (hVar == null) {
            hVar = new a.e.h<>();
            this.f1437a.put(context, hVar);
        }
        hVar.a(i2, colorStateList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Drawable drawable, b0 b0Var, int[] iArr) {
        if (!p.a(drawable) || drawable.mutate() == drawable) {
            if (!b0Var.f1286d && !b0Var.f1285c) {
                drawable.clearColorFilter();
            } else {
                drawable.setColorFilter(a(b0Var.f1286d ? b0Var.f1283a : null, b0Var.f1285c ? b0Var.f1284b : f1434h, iArr));
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    private static PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return a(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized PorterDuffColorFilter a(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter a2;
        synchronized (u.class) {
            a2 = f1436j.a(i2, mode);
            if (a2 == null) {
                a2 = new PorterDuffColorFilter(i2, mode);
                f1436j.a(i2, mode, a2);
            }
        }
        return a2;
    }

    private static boolean a(@NonNull Drawable drawable) {
        return (drawable instanceof a.p.a.a.i) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }
}
