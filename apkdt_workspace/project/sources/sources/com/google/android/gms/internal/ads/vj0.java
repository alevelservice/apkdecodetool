package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vj0 implements qy0<zzaok, ak0> {

    /* renamed from: a, reason: collision with root package name */
    private Executor f9942a;

    /* renamed from: b, reason: collision with root package name */
    private db0 f9943b;

    public vj0(Executor executor, db0 db0Var) {
        this.f9942a = executor;
        this.f9943b = db0Var;
    }

    @Override // com.google.android.gms.internal.ads.qy0
    public final /* synthetic */ qz0<ak0> b(zzaok zzaokVar) {
        final zzaok zzaokVar2 = zzaokVar;
        return gz0.a(this.f9943b.a(zzaokVar2), new qy0(zzaokVar2) { // from class: com.google.android.gms.internal.ads.yj0

            /* renamed from: a, reason: collision with root package name */
            private final zzaok f10571a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10571a = zzaokVar2;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                zzaok zzaokVar3 = this.f10571a;
                ak0 ak0Var = new ak0(new JsonReader(new InputStreamReader((InputStream) obj)));
                ak0Var.a(zzaokVar3.f10965e);
                return gz0.a(ak0Var);
            }
        }, this.f9942a);
    }
}
