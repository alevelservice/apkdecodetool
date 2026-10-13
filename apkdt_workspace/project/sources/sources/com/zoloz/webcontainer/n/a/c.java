package com.zoloz.webcontainer.n.a;

import android.app.Activity;
import com.zoloz.webcontainer.n.a.b;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: H5LoadingPlugin.java */
/* loaded from: classes2.dex */
public class c implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    final /* synthetic */ Activity f16750e;

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ b f16751f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, Activity activity) {
        this.f16751f = bVar;
        this.f16750e = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        b.a aVar;
        if (this.f16750e.isFinishing()) {
            return;
        }
        aVar = this.f16751f.f16746c;
        aVar.show();
    }
}
