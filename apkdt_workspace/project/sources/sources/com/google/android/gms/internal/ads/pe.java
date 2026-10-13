package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pe {
    public static void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new oe(view, onGlobalLayoutListener).a();
    }

    public static void a(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new re(view, onScrollChangedListener).a();
    }
}
