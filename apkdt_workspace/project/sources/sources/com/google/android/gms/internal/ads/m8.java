package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class m8 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Bitmap f8040e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ l8 f8041f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m8(l8 l8Var, Bitmap bitmap) {
        this.f8041f = l8Var;
        this.f8040e = bitmap;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        rd1 rd1Var;
        rd1 rd1Var2;
        rd1 rd1Var3;
        rd1 rd1Var4;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f8040e.compress(Bitmap.CompressFormat.PNG, 0, byteArrayOutputStream);
        obj = this.f8041f.f7843j;
        synchronized (obj) {
            rd1Var = this.f8041f.f7834a;
            rd1Var.f9102i = new ud1();
            rd1Var2 = this.f8041f.f7834a;
            rd1Var2.f9102i.f9718e = byteArrayOutputStream.toByteArray();
            rd1Var3 = this.f8041f.f7834a;
            rd1Var3.f9102i.f9717d = "image/png";
            rd1Var4 = this.f8041f.f7834a;
            rd1Var4.f9102i.f9716c = ed1.TYPE_CREATIVE;
        }
    }
}
