package e.f.f.g;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import com.facebook.common.internal.VisibleForTesting;
import e.f.f.f.h;
import e.f.f.f.t;
import e.f.f.f.u;
import javax.annotation.Nullable;

/* compiled from: RootDrawable.java */
/* loaded from: classes.dex */
public class d extends h implements t {

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    @Nullable
    Drawable f17398h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    private u f17399i;

    public d(Drawable drawable) {
        super(drawable);
        this.f17398h = null;
    }

    @Override // e.f.f.f.t
    public void a(@Nullable u uVar) {
        this.f17399i = uVar;
    }

    public void d(@Nullable Drawable drawable) {
        this.f17398h = drawable;
        invalidateSelf();
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (isVisible()) {
            u uVar = this.f17399i;
            if (uVar != null) {
                uVar.onDraw();
            }
            super.draw(canvas);
            Drawable drawable = this.f17398h;
            if (drawable != null) {
                drawable.setBounds(getBounds());
                this.f17398h.draw(canvas);
            }
        }
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return -1;
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return -1;
    }

    @Override // e.f.f.f.h, android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        u uVar = this.f17399i;
        if (uVar != null) {
            uVar.a(z);
        }
        return super.setVisible(z, z2);
    }
}
