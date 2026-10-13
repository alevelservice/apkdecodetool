package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    protected int f5217a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, Bitmap bitmap, boolean z) {
        com.google.android.gms.common.internal.b.a(bitmap);
        a(new BitmapDrawable(context.getResources(), bitmap), z, false, true);
    }

    protected abstract void a(Drawable drawable, boolean z, boolean z2, boolean z3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Context context, com.google.android.gms.internal.base.b bVar, boolean z) {
        int i2 = this.f5217a;
        a(i2 != 0 ? context.getResources().getDrawable(i2) : null, z, false, false);
    }
}
