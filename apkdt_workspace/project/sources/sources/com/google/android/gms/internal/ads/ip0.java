package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ip0 implements ko0<jp0> {

    /* renamed from: a, reason: collision with root package name */
    private final m7 f7350a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f7351b;

    /* renamed from: c, reason: collision with root package name */
    private final String f7352c;

    /* renamed from: d, reason: collision with root package name */
    private final tz0 f7353d;

    public ip0(@Nullable m7 m7Var, Context context, String str, tz0 tz0Var) {
        this.f7350a = m7Var;
        this.f7351b = context;
        this.f7352c = str;
        this.f7353d = tz0Var;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<jp0> a() {
        return this.f7353d.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.mp0

            /* renamed from: e, reason: collision with root package name */
            private final ip0 f8206e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8206e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f8206e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ jp0 b() {
        JSONObject jSONObject = new JSONObject();
        m7 m7Var = this.f7350a;
        if (m7Var != null) {
            m7Var.a(this.f7351b, this.f7352c, jSONObject);
        }
        return new jp0(jSONObject);
    }
}
