package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jf0 implements dd0<d10, zzaji, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f7475a;

    /* renamed from: b, reason: collision with root package name */
    private final f00 f7476b;

    /* renamed from: c, reason: collision with root package name */
    private final Executor f7477c;

    public jf0(Context context, f00 f00Var, Executor executor) {
        this.f7475a = context;
        this.f7476b = f00Var;
        this.f7477c = executor;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgu> bd0Var) {
        zzaji zzajiVar = bd0Var.f5765b;
        IObjectWrapper wrap = ObjectWrapper.wrap(this.f7475a);
        zztp zztpVar = vs0Var.f9985a.f9004a.f10195d;
        String jSONObject = ns0Var.s.toString();
        String a2 = nc.a((sc) ns0Var.p);
        zzcgu zzcguVar = bd0Var.f5766c;
        ws0 ws0Var = vs0Var.f9985a.f9004a;
        zzajiVar.zza(wrap, zztpVar, jSONObject, a2, zzcguVar, ws0Var.f10200i, ws0Var.f10198g);
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ d10 b(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgu> bd0Var) {
        l10 a2;
        zzajq zzrl = bd0Var.f5765b.zzrl();
        zzajr zzrm = bd0Var.f5765b.zzrm();
        zzajw zzrr = bd0Var.f5765b.zzrr();
        if (zzrr != null && a(vs0Var, 6)) {
            a2 = l10.a(zzrr);
        } else if (zzrl != null && a(vs0Var, 6)) {
            a2 = l10.b(zzrl);
        } else if (zzrl != null && a(vs0Var, 2)) {
            a2 = l10.a(zzrl);
        } else if (zzrm != null && a(vs0Var, 6)) {
            a2 = l10.b(zzrm);
        } else if (zzrm != null && a(vs0Var, 1)) {
            a2 = l10.a(zzrm);
        } else {
            throw new bg0("No native ad mappers", 0);
        }
        if (vs0Var.f9985a.f9004a.f10198g.contains(Integer.toString(a2.o()))) {
            r10 a3 = this.f7476b.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new y10(a2), new a30(zzrm, zzrl, zzrr));
            bd0Var.f5766c.zza(a3.f());
            a3.a().a((yt) new dn(bd0Var.f5765b), this.f7477c);
            return a3.g();
        }
        throw new bg0("No corresponding native ad listener", 0);
    }

    private static boolean a(vs0 vs0Var, int i2) {
        return vs0Var.f9985a.f9004a.f10198g.contains(Integer.toString(i2));
    }
}
