package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j20 implements View.OnClickListener {

    /* renamed from: e, reason: collision with root package name */
    private final y40 f7409e;

    /* renamed from: f, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f7410f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private zzacl f7411g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    private o0<Object> f7412h;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    String f7413i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Long f7414j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    WeakReference<View> f7415k;

    public j20(y40 y40Var, com.google.android.gms.common.util.e eVar) {
        this.f7409e = y40Var;
        this.f7410f = eVar;
    }

    private final void c() {
        View view;
        this.f7413i = null;
        this.f7414j = null;
        WeakReference<View> weakReference = this.f7415k;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.f7415k = null;
    }

    public final void a(final zzacl zzaclVar) {
        this.f7411g = zzaclVar;
        o0<Object> o0Var = this.f7412h;
        if (o0Var != null) {
            this.f7409e.b("/unconfirmedClick", o0Var);
        }
        this.f7412h = new o0(this, zzaclVar) { // from class: com.google.android.gms.internal.ads.i20

            /* renamed from: a, reason: collision with root package name */
            private final j20 f7210a;

            /* renamed from: b, reason: collision with root package name */
            private final zzacl f7211b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7210a = this;
                this.f7211b = zzaclVar;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                j20 j20Var = this.f7210a;
                zzacl zzaclVar2 = this.f7211b;
                try {
                    j20Var.f7414j = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    qd.b("Failed to call parse unconfirmedClickTimestamp.");
                }
                j20Var.f7413i = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzaclVar2 == null) {
                    qd.a("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzaclVar2.onUnconfirmedClickReceived(str);
                } catch (RemoteException e2) {
                    qd.d("#007 Could not call remote method.", e2);
                }
            }
        };
        this.f7409e.a("/unconfirmedClick", this.f7412h);
    }

    @Nullable
    public final zzacl b() {
        return this.f7411g;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f7415k;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f7413i != null && this.f7414j != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.f7413i);
            hashMap.put("time_interval", String.valueOf(this.f7410f.a() - this.f7414j.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.f7409e.a("sendMessageToNativeJs", hashMap);
        }
        c();
    }

    public final void a() {
        if (this.f7411g == null || this.f7414j == null) {
            return;
        }
        c();
        try {
            this.f7411g.onUnconfirmedClickCancelled();
        } catch (RemoteException e2) {
            qd.d("#007 Could not call remote method.", e2);
        }
    }
}
