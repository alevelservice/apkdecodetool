package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k20 {

    /* renamed from: a, reason: collision with root package name */
    private final Context f7597a;

    /* renamed from: b, reason: collision with root package name */
    private final d60 f7598b;

    /* renamed from: c, reason: collision with root package name */
    private final y40 f7599c;

    /* renamed from: d, reason: collision with root package name */
    private final ao f7600d;

    /* renamed from: e, reason: collision with root package name */
    private final u10 f7601e;

    public k20(Context context, d60 d60Var, y40 y40Var, ao aoVar, u10 u10Var) {
        this.f7597a = context;
        this.f7598b = d60Var;
        this.f7599c = y40Var;
        this.f7600d = aoVar;
        this.f7601e = u10Var;
    }

    public final View a() {
        fi a2 = this.f7598b.a(zztw.a(this.f7597a), false);
        a2.getView().setVisibility(8);
        a2.zza("/sendMessageToSdk", new o0(this) { // from class: com.google.android.gms.internal.ads.o20

            /* renamed from: a, reason: collision with root package name */
            private final k20 f8461a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8461a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f8461a.d((fi) obj, map);
            }
        });
        a2.zza("/adMuted", new o0(this) { // from class: com.google.android.gms.internal.ads.m20

            /* renamed from: a, reason: collision with root package name */
            private final k20 f8005a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8005a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f8005a.c((fi) obj, map);
            }
        });
        this.f7599c.a(new WeakReference(a2), "/loadHtml", new o0(this) { // from class: com.google.android.gms.internal.ads.q20

            /* renamed from: a, reason: collision with root package name */
            private final k20 f8836a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8836a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, final Map map) {
                final k20 k20Var = this.f8836a;
                fi fiVar = (fi) obj;
                fiVar.zzyy().a(new rj(k20Var, map) { // from class: com.google.android.gms.internal.ads.r20

                    /* renamed from: a, reason: collision with root package name */
                    private final k20 f9025a;

                    /* renamed from: b, reason: collision with root package name */
                    private final Map f9026b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f9025a = k20Var;
                        this.f9026b = map;
                    }

                    @Override // com.google.android.gms.internal.ads.rj
                    public final void a(boolean z) {
                        this.f9025a.a(this.f9026b, z);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    fiVar.loadData(str, "text/html", "UTF-8");
                } else {
                    fiVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        });
        this.f7599c.a(new WeakReference(a2), "/showOverlay", new o0(this) { // from class: com.google.android.gms.internal.ads.p20

            /* renamed from: a, reason: collision with root package name */
            private final k20 f8629a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8629a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f8629a.b((fi) obj, map);
            }
        });
        this.f7599c.a(new WeakReference(a2), "/hideOverlay", new o0(this) { // from class: com.google.android.gms.internal.ads.s20

            /* renamed from: a, reason: collision with root package name */
            private final k20 f9265a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9265a = this;
            }

            @Override // com.google.android.gms.internal.ads.o0
            public final void a(Object obj, Map map) {
                this.f9265a.a((fi) obj, map);
            }
        });
        return a2.getView();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b(fi fiVar, Map map) {
        qd.c("Showing native ads overlay.");
        fiVar.getView().setVisibility(0);
        this.f7600d.a(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void c(fi fiVar, Map map) {
        this.f7601e.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void d(fi fiVar, Map map) {
        this.f7599c.a("sendMessageToNativeJs", (Map<String, ?>) map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(fi fiVar, Map map) {
        qd.c("Hiding native ads overlay.");
        fiVar.getView().setVisibility(8);
        this.f7600d.a(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(Map map, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put("messageType", "htmlLoaded");
        hashMap.put("id", (String) map.get("id"));
        this.f7599c.a("sendMessageToNativeJs", hashMap);
    }
}
