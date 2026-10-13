package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.internal.ads.st1;
import com.google.android.gms.internal.ads.wu1;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    private final wu1 f4483a;

    public f(Context context) {
        this.f4483a = new wu1(context);
        m.a(context, "Context cannot be null");
    }

    @RequiresPermission("android.permission.INTERNET")
    public final void a(AdRequest adRequest) {
        this.f4483a.a(adRequest.a());
    }

    public final void b() {
        this.f4483a.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(b bVar) {
        this.f4483a.a(bVar);
        if (bVar != 0 && (bVar instanceof st1)) {
            this.f4483a.a((st1) bVar);
        } else if (bVar == 0) {
            this.f4483a.a((st1) null);
        }
    }

    public final void b(boolean z) {
        this.f4483a.b(true);
    }

    public final void a(String str) {
        this.f4483a.a(str);
    }

    public final void a(com.google.android.gms.ads.o.c cVar) {
        this.f4483a.a(cVar);
    }

    public final void a(com.google.android.gms.ads.o.a aVar) {
        this.f4483a.a(aVar);
    }

    public final Bundle a() {
        return this.f4483a.a();
    }

    public final void a(boolean z) {
        this.f4483a.a(z);
    }
}
