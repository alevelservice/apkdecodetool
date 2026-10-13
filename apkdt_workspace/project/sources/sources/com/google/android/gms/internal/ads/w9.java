package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w9 {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f10048a;

    /* renamed from: b, reason: collision with root package name */
    private final ka f10049b;

    /* renamed from: e, reason: collision with root package name */
    private final String f10052e;

    /* renamed from: f, reason: collision with root package name */
    private final String f10053f;

    /* renamed from: d, reason: collision with root package name */
    private final Object f10051d = new Object();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("lock")
    private long f10054g = -1;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("lock")
    private long f10055h = -1;

    /* renamed from: i, reason: collision with root package name */
    @GuardedBy("lock")
    private long f10056i = -1;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("lock")
    private long f10057j = 0;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("lock")
    private long f10058k = -1;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    private long f10059l = -1;

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("lock")
    private final LinkedList<z9> f10050c = new LinkedList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public w9(com.google.android.gms.common.util.e eVar, ka kaVar, String str, String str2) {
        this.f10048a = eVar;
        this.f10049b = kaVar;
        this.f10052e = str;
        this.f10053f = str2;
    }

    public final void a(zztp zztpVar) {
        synchronized (this.f10051d) {
            this.f10058k = this.f10048a.c();
            this.f10049b.a(zztpVar, this.f10058k);
        }
    }

    public final void b() {
        synchronized (this.f10051d) {
            if (this.f10059l != -1 && this.f10055h == -1) {
                this.f10055h = this.f10048a.c();
                this.f10049b.a(this);
            }
            this.f10049b.a();
        }
    }

    public final void c() {
        synchronized (this.f10051d) {
            if (this.f10059l != -1) {
                z9 z9Var = new z9(this);
                z9Var.d();
                this.f10050c.add(z9Var);
                this.f10057j++;
                this.f10049b.b();
                this.f10049b.a(this);
            }
        }
    }

    public final void d() {
        synchronized (this.f10051d) {
            if (this.f10059l != -1 && !this.f10050c.isEmpty()) {
                z9 last = this.f10050c.getLast();
                if (last.b() == -1) {
                    last.c();
                    this.f10049b.a(this);
                }
            }
        }
    }

    public final String e() {
        return this.f10052e;
    }

    public final void a(long j2) {
        synchronized (this.f10051d) {
            this.f10059l = j2;
            if (this.f10059l != -1) {
                this.f10049b.a(this);
            }
        }
    }

    public final void a(boolean z) {
        synchronized (this.f10051d) {
            if (this.f10059l != -1) {
                this.f10056i = this.f10048a.c();
            }
        }
    }

    public final Bundle a() {
        Bundle bundle;
        synchronized (this.f10051d) {
            bundle = new Bundle();
            bundle.putString("seq_num", this.f10052e);
            bundle.putString("slotid", this.f10053f);
            bundle.putBoolean("ismediation", false);
            bundle.putLong("treq", this.f10058k);
            bundle.putLong("tresponse", this.f10059l);
            bundle.putLong("timp", this.f10055h);
            bundle.putLong("tload", this.f10056i);
            bundle.putLong("pcc", this.f10057j);
            bundle.putLong("tfetch", this.f10054g);
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<z9> it = this.f10050c.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().a());
            }
            bundle.putParcelableArrayList("tclick", arrayList);
        }
        return bundle;
    }
}
