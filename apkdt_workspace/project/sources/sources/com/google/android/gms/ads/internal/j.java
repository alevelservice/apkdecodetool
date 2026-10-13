package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.t11;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j implements View.OnTouchListener {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ zzj f4530e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(zzj zzjVar) {
        this.f4530e = zzjVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        t11 t11Var;
        t11 t11Var2;
        t11Var = this.f4530e.f4610l;
        if (t11Var == null) {
            return false;
        }
        t11Var2 = this.f4530e.f4610l;
        t11Var2.a(motionEvent);
        return false;
    }
}
