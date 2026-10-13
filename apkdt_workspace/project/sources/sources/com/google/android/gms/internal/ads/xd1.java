package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class xd1 implements uk, Closeable, Iterator<ci> {

    /* renamed from: k, reason: collision with root package name */
    private static final ci f10318k = new ae1("eof ");

    /* renamed from: e, reason: collision with root package name */
    protected bh f10319e;

    /* renamed from: f, reason: collision with root package name */
    protected zd1 f10320f;

    /* renamed from: g, reason: collision with root package name */
    private ci f10321g = null;

    /* renamed from: h, reason: collision with root package name */
    long f10322h = 0;

    /* renamed from: i, reason: collision with root package name */
    long f10323i = 0;

    /* renamed from: j, reason: collision with root package name */
    private List<ci> f10324j = new ArrayList();

    static {
        fe1.a(xd1.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Iterator
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final ci next() {
        ci a2;
        ci ciVar = this.f10321g;
        if (ciVar != null && ciVar != f10318k) {
            this.f10321g = null;
            return ciVar;
        }
        zd1 zd1Var = this.f10320f;
        if (zd1Var != null && this.f10322h < this.f10323i) {
            try {
                synchronized (zd1Var) {
                    this.f10320f.g(this.f10322h);
                    a2 = this.f10319e.a(this.f10320f, this);
                    this.f10322h = this.f10320f.position();
                }
                return a2;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.f10321g = f10318k;
        throw new NoSuchElementException();
    }

    public void a(zd1 zd1Var, long j2, bh bhVar) {
        this.f10320f = zd1Var;
        this.f10322h = zd1Var.position();
        zd1Var.g(zd1Var.position() + j2);
        this.f10323i = zd1Var.position();
        this.f10319e = bhVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f10320f.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        ci ciVar = this.f10321g;
        if (ciVar == f10318k) {
            return false;
        }
        if (ciVar != null) {
            return true;
        }
        try {
            this.f10321g = (ci) next();
            return true;
        } catch (NoSuchElementException unused) {
            this.f10321g = f10318k;
            return false;
        }
    }

    public final List<ci> i() {
        if (this.f10320f != null && this.f10321g != f10318k) {
            return new de1(this.f10324j, this);
        }
        return this.f10324j;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i2 = 0; i2 < this.f10324j.size(); i2++) {
            if (i2 > 0) {
                sb.append(";");
            }
            sb.append(this.f10324j.get(i2).toString());
        }
        sb.append("]");
        return sb.toString();
    }
}
