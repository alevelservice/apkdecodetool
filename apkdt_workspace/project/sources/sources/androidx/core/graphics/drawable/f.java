package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WrappedDrawableState.java */
/* loaded from: classes.dex */
public final class f extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    int f1838a;

    /* renamed from: b, reason: collision with root package name */
    Drawable.ConstantState f1839b;

    /* renamed from: c, reason: collision with root package name */
    ColorStateList f1840c;

    /* renamed from: d, reason: collision with root package name */
    PorterDuff.Mode f1841d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@Nullable f fVar) {
        this.f1840c = null;
        this.f1841d = d.f1830k;
        if (fVar != null) {
            this.f1838a = fVar.f1838a;
            this.f1839b = fVar.f1839b;
            this.f1840c = fVar.f1840c;
            this.f1841d = fVar.f1841d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return this.f1839b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i2 = this.f1838a;
        Drawable.ConstantState constantState = this.f1839b;
        return i2 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    @NonNull
    public Drawable newDrawable(@Nullable Resources resources) {
        if (Build.VERSION.SDK_INT >= 21) {
            return new e(this, resources);
        }
        return new d(this, resources);
    }
}
