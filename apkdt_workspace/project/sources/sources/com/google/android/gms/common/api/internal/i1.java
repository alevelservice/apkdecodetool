package com.google.android.gms.common.api.internal;

import android.app.Dialog;
import androidx.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiActivity;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
final class i1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final j1 f5089e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ h1 f5090f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(h1 h1Var, j1 j1Var) {
        this.f5090f = h1Var;
        this.f5089e = j1Var;
    }

    @Override // java.lang.Runnable
    @MainThread
    public final void run() {
        if (this.f5090f.f5083f) {
            ConnectionResult a2 = this.f5089e.a();
            if (a2.m()) {
                h1 h1Var = this.f5090f;
                h1Var.f5027e.startActivityForResult(GoogleApiActivity.zaa(h1Var.a(), a2.l(), this.f5089e.b(), false), 1);
            } else if (this.f5090f.f5086i.b(a2.j())) {
                h1 h1Var2 = this.f5090f;
                h1Var2.f5086i.a(h1Var2.a(), this.f5090f.f5027e, a2.j(), 2, this.f5090f);
            } else {
                if (a2.j() == 18) {
                    Dialog a3 = com.google.android.gms.common.c.a(this.f5090f.a(), this.f5090f);
                    h1 h1Var3 = this.f5090f;
                    h1Var3.f5086i.a(h1Var3.a().getApplicationContext(), new k1(this, a3));
                    return;
                }
                this.f5090f.a(a2, this.f5089e.b());
            }
        }
    }
}
