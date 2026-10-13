package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;

/* compiled from: VectorEnabledTintResources.java */
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class i0 extends Resources {

    /* renamed from: b, reason: collision with root package name */
    private static boolean f1371b = false;

    /* renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f1372a;

    public i0(@NonNull Context context, @NonNull Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1372a = new WeakReference<>(context);
    }

    public static boolean b() {
        return a() && Build.VERSION.SDK_INT <= 20;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable a(int i2) {
        return super.getDrawable(i2);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i2) {
        Context context = this.f1372a.get();
        if (context != null) {
            return u.a().a(context, this, i2);
        }
        return super.getDrawable(i2);
    }

    public static boolean a() {
        return f1371b;
    }
}
