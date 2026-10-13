package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;

/* compiled from: TintResources.java */
/* loaded from: classes.dex */
class c0 extends v {

    /* renamed from: b, reason: collision with root package name */
    private final WeakReference<Context> f1305b;

    public c0(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.f1305b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.v, android.content.res.Resources
    public Drawable getDrawable(int i2) {
        Drawable drawable = super.getDrawable(i2);
        Context context = this.f1305b.get();
        if (drawable != null && context != null) {
            u.a().a(context, i2, drawable);
        }
        return drawable;
    }
}
