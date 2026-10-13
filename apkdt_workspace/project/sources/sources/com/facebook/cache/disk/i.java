package com.facebook.cache.disk;

import e.f.b.a.c;
import java.io.IOException;

/* compiled from: SettableCacheEvent.java */
/* loaded from: classes.dex */
public class i implements e.f.b.a.b {

    /* renamed from: b, reason: collision with root package name */
    private static final Object f3525b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static i f3526c;

    /* renamed from: d, reason: collision with root package name */
    private static int f3527d;

    /* renamed from: a, reason: collision with root package name */
    private i f3528a;

    private i() {
    }

    public static i b() {
        synchronized (f3525b) {
            if (f3526c != null) {
                i iVar = f3526c;
                f3526c = iVar.f3528a;
                iVar.f3528a = null;
                f3527d--;
                return iVar;
            }
            return new i();
        }
    }

    private void c() {
    }

    public i a(long j2) {
        return this;
    }

    public i a(c.a aVar) {
        return this;
    }

    public i a(e.f.b.a.d dVar) {
        return this;
    }

    public i a(IOException iOException) {
        return this;
    }

    public i a(String str) {
        return this;
    }

    public void a() {
        synchronized (f3525b) {
            if (f3527d < 5) {
                c();
                f3527d++;
                if (f3526c != null) {
                    this.f3528a = f3526c;
                }
                f3526c = this;
            }
        }
    }

    public i b(long j2) {
        return this;
    }

    public i c(long j2) {
        return this;
    }
}
