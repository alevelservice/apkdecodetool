package com.google.android.gms.internal.vision;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class i8<T> {

    /* renamed from: j, reason: collision with root package name */
    private static String f12389j = "com.google.android.gms.vision.dynamite";

    /* renamed from: a, reason: collision with root package name */
    private final Context f12390a;

    /* renamed from: c, reason: collision with root package name */
    private final String f12392c;

    /* renamed from: d, reason: collision with root package name */
    private final String f12393d;

    /* renamed from: e, reason: collision with root package name */
    private final String f12394e;

    /* renamed from: f, reason: collision with root package name */
    private final boolean f12395f;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("lock")
    private T f12398i;

    /* renamed from: b, reason: collision with root package name */
    private final Object f12391b = new Object();

    /* renamed from: g, reason: collision with root package name */
    private boolean f12396g = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f12397h = false;

    public i8(Context context, String str, String str2) {
        boolean z = false;
        this.f12390a = context;
        this.f12392c = str;
        String str3 = f12389j;
        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str2).length());
        sb.append(str3);
        sb.append(".");
        sb.append(str2);
        this.f12393d = sb.toString();
        this.f12394e = str2;
        if (context != null) {
            x.b(context);
            x0 zza = x0.zza("barcode", Boolean.valueOf(g8.a()), "face", Boolean.TRUE, "ica", Boolean.valueOf(g8.b()), "ocr", Boolean.TRUE);
            if (zza.containsKey(str2) && ((Boolean) zza.get(str2)).booleanValue()) {
                z = true;
            }
        }
        this.f12395f = z;
    }

    protected abstract T a(DynamiteModule dynamiteModule, Context context);

    public final boolean a() {
        return b() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T b() {
        DynamiteModule a2;
        synchronized (this.f12391b) {
            if (this.f12398i != null) {
                return this.f12398i;
            }
            try {
                a2 = DynamiteModule.a(this.f12390a, DynamiteModule.f5463l, this.f12393d);
            } catch (DynamiteModule.a unused) {
                a2 = k8.a(this.f12390a, this.f12394e, this.f12395f);
                if (a2 == null && this.f12395f && !this.f12396g) {
                    String valueOf = String.valueOf(this.f12394e);
                    if (valueOf.length() != 0) {
                        "Broadcasting download intent for dependency ".concat(valueOf);
                    } else {
                        new String("Broadcasting download intent for dependency ");
                    }
                    String str = this.f12394e;
                    Intent intent = new Intent();
                    intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
                    intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", str);
                    intent.setAction("com.google.android.gms.vision.DEPENDENCY");
                    this.f12390a.sendBroadcast(intent);
                    this.f12396g = true;
                }
            }
            if (a2 != null) {
                try {
                    this.f12398i = a(a2, this.f12390a);
                } catch (RemoteException | DynamiteModule.a unused2) {
                }
            }
            if (!this.f12397h && this.f12398i == null) {
                this.f12397h = true;
            } else if (this.f12397h) {
                T t = this.f12398i;
            }
            return this.f12398i;
        }
    }
}
