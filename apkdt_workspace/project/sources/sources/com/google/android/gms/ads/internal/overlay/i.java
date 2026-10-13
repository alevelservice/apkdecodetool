package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.fi;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@VisibleForTesting
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final int f4563a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup.LayoutParams f4564b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f4565c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4566d;

    public i(fi fiVar) {
        this.f4564b = fiVar.getLayoutParams();
        ViewParent parent = fiVar.getParent();
        this.f4566d = fiVar.zzyt();
        if (parent != null && (parent instanceof ViewGroup)) {
            this.f4565c = (ViewGroup) parent;
            this.f4563a = this.f4565c.indexOfChild(fiVar.getView());
            this.f4565c.removeView(fiVar.getView());
            fiVar.zzaq(true);
            return;
        }
        throw new g("Could not get the parent of the WebView for an overlay.");
    }
}
