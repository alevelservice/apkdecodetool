package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.pb;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
final class f extends RelativeLayout {

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private pb f4560e;

    /* renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    boolean f4561f;

    public f(Context context, String str, String str2) {
        super(context);
        this.f4560e = new pb(context, str);
        this.f4560e.d(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f4561f) {
            return false;
        }
        this.f4560e.a(motionEvent);
        return false;
    }
}
