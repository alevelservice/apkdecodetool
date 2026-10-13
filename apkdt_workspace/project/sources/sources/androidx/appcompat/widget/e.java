package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatCompoundButtonHelper.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final CompoundButton f1315a;

    /* renamed from: b, reason: collision with root package name */
    private ColorStateList f1316b = null;

    /* renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f1317c = null;

    /* renamed from: d, reason: collision with root package name */
    private boolean f1318d = false;

    /* renamed from: e, reason: collision with root package name */
    private boolean f1319e = false;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1320f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(@NonNull CompoundButton compoundButton) {
        this.f1315a = compoundButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a A[Catch: all -> 0x0092, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:11:0x0043, B:13:0x004b, B:15:0x0053, B:16:0x0062, B:18:0x006a, B:19:0x0075, B:21:0x007d), top: B:2:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007d A[Catch: all -> 0x0092, TRY_LEAVE, TryCatch #0 {all -> 0x0092, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:11:0x0043, B:13:0x004b, B:15:0x0053, B:16:0x0062, B:18:0x006a, B:19:0x0075, B:21:0x007d), top: B:2:0x001f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(@androidx.annotation.Nullable android.util.AttributeSet r11, int r12) {
        /*
            r10 = this;
            android.widget.CompoundButton r0 = r10.f1315a
            android.content.Context r0 = r0.getContext()
            int[] r1 = a.a.j.CompoundButton
            r2 = 0
            androidx.appcompat.widget.d0 r0 = androidx.appcompat.widget.d0.a(r0, r11, r1, r12, r2)
            android.widget.CompoundButton r3 = r10.f1315a
            android.content.Context r4 = r3.getContext()
            int[] r5 = a.a.j.CompoundButton
            android.content.res.TypedArray r7 = r0.a()
            r9 = 0
            r6 = r11
            r8 = r12
            androidx.core.view.ViewCompat.a(r3, r4, r5, r6, r7, r8, r9)
            int r11 = a.a.j.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L92
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L92
            if (r11 == 0) goto L40
            int r11 = a.a.j.CompoundButton_buttonCompat     // Catch: java.lang.Throwable -> L92
            int r11 = r0.g(r11, r2)     // Catch: java.lang.Throwable -> L92
            if (r11 == 0) goto L40
            android.widget.CompoundButton r12 = r10.f1315a     // Catch: android.content.res.Resources.NotFoundException -> L40 java.lang.Throwable -> L92
            android.widget.CompoundButton r1 = r10.f1315a     // Catch: android.content.res.Resources.NotFoundException -> L40 java.lang.Throwable -> L92
            android.content.Context r1 = r1.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L40 java.lang.Throwable -> L92
            android.graphics.drawable.Drawable r11 = a.a.k.a.a.c(r1, r11)     // Catch: android.content.res.Resources.NotFoundException -> L40 java.lang.Throwable -> L92
            r12.setButtonDrawable(r11)     // Catch: android.content.res.Resources.NotFoundException -> L40 java.lang.Throwable -> L92
            r11 = 1
            goto L41
        L40:
            r11 = 0
        L41:
            if (r11 != 0) goto L62
            int r11 = a.a.j.CompoundButton_android_button     // Catch: java.lang.Throwable -> L92
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L92
            if (r11 == 0) goto L62
            int r11 = a.a.j.CompoundButton_android_button     // Catch: java.lang.Throwable -> L92
            int r11 = r0.g(r11, r2)     // Catch: java.lang.Throwable -> L92
            if (r11 == 0) goto L62
            android.widget.CompoundButton r12 = r10.f1315a     // Catch: java.lang.Throwable -> L92
            android.widget.CompoundButton r1 = r10.f1315a     // Catch: java.lang.Throwable -> L92
            android.content.Context r1 = r1.getContext()     // Catch: java.lang.Throwable -> L92
            android.graphics.drawable.Drawable r11 = a.a.k.a.a.c(r1, r11)     // Catch: java.lang.Throwable -> L92
            r12.setButtonDrawable(r11)     // Catch: java.lang.Throwable -> L92
        L62:
            int r11 = a.a.j.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L92
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L92
            if (r11 == 0) goto L75
            android.widget.CompoundButton r11 = r10.f1315a     // Catch: java.lang.Throwable -> L92
            int r12 = a.a.j.CompoundButton_buttonTint     // Catch: java.lang.Throwable -> L92
            android.content.res.ColorStateList r12 = r0.a(r12)     // Catch: java.lang.Throwable -> L92
            androidx.core.widget.c.a(r11, r12)     // Catch: java.lang.Throwable -> L92
        L75:
            int r11 = a.a.j.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L92
            boolean r11 = r0.g(r11)     // Catch: java.lang.Throwable -> L92
            if (r11 == 0) goto L8e
            android.widget.CompoundButton r11 = r10.f1315a     // Catch: java.lang.Throwable -> L92
            int r12 = a.a.j.CompoundButton_buttonTintMode     // Catch: java.lang.Throwable -> L92
            r1 = -1
            int r12 = r0.d(r12, r1)     // Catch: java.lang.Throwable -> L92
            r1 = 0
            android.graphics.PorterDuff$Mode r12 = androidx.appcompat.widget.p.a(r12, r1)     // Catch: java.lang.Throwable -> L92
            androidx.core.widget.c.a(r11, r12)     // Catch: java.lang.Throwable -> L92
        L8e:
            r0.b()
            return
        L92:
            r11 = move-exception
            r0.b()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.e.a(android.util.AttributeSet, int):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ColorStateList b() {
        return this.f1316b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PorterDuff.Mode c() {
        return this.f1317c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        if (this.f1320f) {
            this.f1320f = false;
        } else {
            this.f1320f = true;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ColorStateList colorStateList) {
        this.f1316b = colorStateList;
        this.f1318d = true;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@Nullable PorterDuff.Mode mode) {
        this.f1317c = mode;
        this.f1319e = true;
        a();
    }

    void a() {
        Drawable a2 = androidx.core.widget.c.a(this.f1315a);
        if (a2 != null) {
            if (this.f1318d || this.f1319e) {
                Drawable mutate = androidx.core.graphics.drawable.a.i(a2).mutate();
                if (this.f1318d) {
                    androidx.core.graphics.drawable.a.a(mutate, this.f1316b);
                }
                if (this.f1319e) {
                    androidx.core.graphics.drawable.a.a(mutate, this.f1317c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.f1315a.getDrawableState());
                }
                this.f1315a.setButtonDrawable(mutate);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i2) {
        Drawable a2;
        return (Build.VERSION.SDK_INT >= 17 || (a2 = androidx.core.widget.c.a(this.f1315a)) == null) ? i2 : i2 + a2.getIntrinsicWidth();
    }
}
