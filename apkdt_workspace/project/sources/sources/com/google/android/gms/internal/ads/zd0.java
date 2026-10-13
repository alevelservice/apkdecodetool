package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.browser.customtabs.CustomTabsIntent;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zd0 implements ad0<py> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10732a;

    /* renamed from: b, reason: collision with root package name */
    private final lz f10733b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f10734c;

    /* renamed from: d, reason: collision with root package name */
    private final ks0 f10735d;

    public zd0(Context context, Executor executor, lz lzVar, ks0 ks0Var) {
        this.f10732a = context;
        this.f10733b = lzVar;
        this.f10734c = executor;
        this.f10735d = ks0Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<py> a(final vs0 vs0Var, final ns0 ns0Var) {
        String a2 = a(ns0Var);
        final Uri parse = a2 != null ? Uri.parse(a2) : null;
        return gz0.a(gz0.a((Object) null), new qy0(this, parse, vs0Var, ns0Var) { // from class: com.google.android.gms.internal.ads.ce0

            /* renamed from: a, reason: collision with root package name */
            private final zd0 f5986a;

            /* renamed from: b, reason: collision with root package name */
            private final Uri f5987b;

            /* renamed from: c, reason: collision with root package name */
            private final vs0 f5988c;

            /* renamed from: d, reason: collision with root package name */
            private final ns0 f5989d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5986a = this;
                this.f5987b = parse;
                this.f5988c = vs0Var;
                this.f5989d = ns0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f5986a.a(this.f5987b, this.f5988c, this.f5989d, obj);
            }
        }, this.f10734c);
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        return (this.f10732a instanceof Activity) && com.google.android.gms.common.util.o.b() && sw1.a(this.f10732a) && !TextUtils.isEmpty(a(ns0Var));
    }

    private static String a(ns0 ns0Var) {
        try {
            return ns0Var.s.getString("tab_url");
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(Uri uri, vs0 vs0Var, ns0 ns0Var, Object obj) {
        try {
            CustomTabsIntent b2 = new CustomTabsIntent.a().b();
            b2.f1498a.setData(uri);
            zzb zzbVar = new zzb(b2.f1498a);
            final he heVar = new he();
            ry a2 = this.f10733b.a(new lr(vs0Var, ns0Var, null), new qy(new sz(heVar) { // from class: com.google.android.gms.internal.ads.be0

                /* renamed from: a, reason: collision with root package name */
                private final he f5768a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5768a = heVar;
                }

                @Override // com.google.android.gms.internal.ads.sz
                public final void a(boolean z, Context context) {
                    he heVar2 = this.f5768a;
                    try {
                        com.google.android.gms.ads.internal.n.b();
                        com.google.android.gms.ads.internal.overlay.j.a(context, (AdOverlayInfoParcel) heVar2.get(), true);
                    } catch (Exception unused) {
                    }
                }
            }));
            heVar.b(new AdOverlayInfoParcel(zzbVar, null, a2.i(), null, new zzawv(0, 0, false)));
            this.f10735d.c();
            return gz0.a(a2.h());
        } catch (Throwable th) {
            qd.b("Error in CustomTabsAdRenderer", th);
            throw th;
        }
    }
}
