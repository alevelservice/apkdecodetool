package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class iv0 {

    /* renamed from: a, reason: collision with root package name */
    private final Executor f7381a;

    /* renamed from: b, reason: collision with root package name */
    private final ud f7382b;

    /* renamed from: c, reason: collision with root package name */
    private final zf0 f7383c;

    /* renamed from: d, reason: collision with root package name */
    private final String f7384d;

    /* renamed from: e, reason: collision with root package name */
    private final String f7385e;

    /* renamed from: f, reason: collision with root package name */
    private final String f7386f;

    /* renamed from: g, reason: collision with root package name */
    private final Context f7387g;

    /* renamed from: h, reason: collision with root package name */
    private final us0 f7388h;

    /* renamed from: i, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f7389i;

    public iv0(Executor executor, ud udVar, zf0 zf0Var, zzawv zzawvVar, String str, String str2, Context context, @Nullable us0 us0Var, com.google.android.gms.common.util.e eVar) {
        this.f7381a = executor;
        this.f7382b = udVar;
        this.f7383c = zf0Var;
        this.f7384d = zzawvVar.f11000e;
        this.f7385e = str;
        this.f7386f = str2;
        this.f7387g = context;
        this.f7388h = us0Var;
        this.f7389i = eVar;
    }

    @Nullable
    private static String c(@Nullable String str) {
        return (TextUtils.isEmpty(str) || !kd.a()) ? str : "fakeForAdDebugLog";
    }

    public final void a(vs0 vs0Var, ns0 ns0Var, List<String> list) {
        a(vs0Var, ns0Var, false, list);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(String str) {
        this.f7382b.a(str);
    }

    public final void a(vs0 vs0Var, @Nullable ns0 ns0Var, boolean z, List<String> list) {
        ArrayList arrayList = new ArrayList();
        String str = z ? "1" : ZimPlatform.REASON_0;
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String a2 = a(a(a(it.next(), "@gw_adlocid@", vs0Var.f9985a.f9004a.f10197f), "@gw_adnetrefresh@", str), "@gw_sdkver@", this.f7384d);
            if (ns0Var != null) {
                a2 = p9.a(a(a(a(a2, "@gw_qdata@", ns0Var.v), "@gw_adnetid@", ns0Var.u), "@gw_allocid@", ns0Var.t), this.f7387g, ns0Var.M);
            }
            arrayList.add(a(a(a(a2, "@gw_adnetstatus@", this.f7383c.a()), "@gw_seqnum@", this.f7385e), "@gw_sessid@", this.f7386f));
        }
        a(arrayList);
    }

    public final void a(vs0 vs0Var, ns0 ns0Var, List<String> list, zzape zzapeVar) {
        long a2 = this.f7389i.a();
        try {
            String type = zzapeVar.getType();
            String num = Integer.toString(zzapeVar.getAmount());
            ArrayList arrayList = new ArrayList();
            us0 us0Var = this.f7388h;
            String c2 = us0Var == null ? "" : c(us0Var.f9808a);
            us0 us0Var2 = this.f7388h;
            String c3 = us0Var2 != null ? c(us0Var2.f9809b) : "";
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(p9.a(a(a(a(a(a(a(it.next(), "@gw_rwd_userid@", Uri.encode(c2)), "@gw_rwd_custom_data@", Uri.encode(c3)), "@gw_tmstmp@", Long.toString(a2)), "@gw_rwd_itm@", Uri.encode(type)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f7384d), this.f7387g, ns0Var.M));
            }
            a(arrayList);
        } catch (RemoteException unused) {
        }
    }

    public final void a(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public final void a(final String str) {
        this.f7381a.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.lv0

            /* renamed from: e, reason: collision with root package name */
            private final iv0 f7983e;

            /* renamed from: f, reason: collision with root package name */
            private final String f7984f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7983e = this;
                this.f7984f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7983e.b(this.f7984f);
            }
        });
    }

    private static String a(String str, String str2, @Nullable String str3) {
        if (TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }
}
