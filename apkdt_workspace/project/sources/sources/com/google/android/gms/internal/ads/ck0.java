package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ck0 implements ko0<zj0> {

    /* renamed from: a, reason: collision with root package name */
    private final tz0 f6045a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f6046b;

    /* renamed from: c, reason: collision with root package name */
    private final ws0 f6047c;

    /* renamed from: d, reason: collision with root package name */
    private final View f6048d;

    public ck0(tz0 tz0Var, Context context, ws0 ws0Var, @Nullable ViewGroup viewGroup) {
        this.f6045a = tz0Var;
        this.f6046b = context;
        this.f6047c = ws0Var;
        this.f6048d = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<zj0> a() {
        if (!((Boolean) mu1.e().a(aw1.h0)).booleanValue()) {
            return gz0.a((Throwable) new Exception("Ad Key signal disabled."));
        }
        return this.f6045a.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.bk0

            /* renamed from: e, reason: collision with root package name */
            private final ck0 f5782e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5782e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f5782e.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zj0 b() {
        Context context = this.f6046b;
        zztw zztwVar = this.f6047c.f10196e;
        ArrayList arrayList = new ArrayList();
        View view = this.f6048d;
        while (view != null) {
            Object parent = view.getParent();
            if (parent == null) {
                break;
            }
            int indexOfChild = parent instanceof ViewGroup ? ((ViewGroup) parent).indexOfChild(view) : -1;
            Bundle bundle = new Bundle();
            bundle.putString("type", parent.getClass().getName());
            bundle.putInt("index_of_child", indexOfChild);
            arrayList.add(bundle);
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return new zj0(context, zztwVar, arrayList);
    }
}
