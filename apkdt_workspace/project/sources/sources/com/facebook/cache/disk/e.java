package com.facebook.cache.disk;

import com.facebook.cache.disk.c;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.j;
import e.f.b.a.a;
import e.f.c.c.c;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import javax.annotation.Nullable;

/* compiled from: DynamicDefaultDiskStorage.java */
/* loaded from: classes.dex */
public class e implements c {

    /* renamed from: f, reason: collision with root package name */
    private static final Class<?> f3517f = e.class;

    /* renamed from: a, reason: collision with root package name */
    private final int f3518a;

    /* renamed from: b, reason: collision with root package name */
    private final j<File> f3519b;

    /* renamed from: c, reason: collision with root package name */
    private final String f3520c;

    /* renamed from: d, reason: collision with root package name */
    private final e.f.b.a.a f3521d;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    volatile a f3522e = new a(null, null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DynamicDefaultDiskStorage.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        public final c f3523a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        public final File f3524b;

        @VisibleForTesting
        a(@Nullable File file, @Nullable c cVar) {
            this.f3523a = cVar;
            this.f3524b = file;
        }
    }

    public e(int i2, j<File> jVar, String str, e.f.b.a.a aVar) {
        this.f3518a = i2;
        this.f3521d = aVar;
        this.f3519b = jVar;
        this.f3520c = str;
    }

    private void f() {
        File file = new File(this.f3519b.get(), this.f3520c);
        a(file);
        this.f3522e = new a(file, new DefaultDiskStorage(file, this.f3518a, this.f3521d));
    }

    private boolean g() {
        File file;
        a aVar = this.f3522e;
        return aVar.f3523a == null || (file = aVar.f3524b) == null || !file.exists();
    }

    @Override // com.facebook.cache.disk.c
    public boolean a() {
        try {
            return e().a();
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.facebook.cache.disk.c
    public e.f.a.a b(String str, Object obj) {
        return e().b(str, obj);
    }

    @Override // com.facebook.cache.disk.c
    public Collection<c.a> c() {
        return e().c();
    }

    @VisibleForTesting
    void d() {
        if (this.f3522e.f3523a == null || this.f3522e.f3524b == null) {
            return;
        }
        e.f.c.c.a.b(this.f3522e.f3524b);
    }

    @VisibleForTesting
    synchronized c e() {
        c cVar;
        if (g()) {
            d();
            f();
        }
        cVar = this.f3522e.f3523a;
        com.facebook.common.internal.h.a(cVar);
        return cVar;
    }

    @Override // com.facebook.cache.disk.c
    public c.b a(String str, Object obj) {
        return e().a(str, obj);
    }

    @Override // com.facebook.cache.disk.c
    public void b() {
        try {
            e().b();
        } catch (IOException e2) {
            e.f.c.d.a.a(f3517f, "purgeUnexpectedResources", (Throwable) e2);
        }
    }

    @Override // com.facebook.cache.disk.c
    public long a(c.a aVar) {
        return e().a(aVar);
    }

    @Override // com.facebook.cache.disk.c
    public long a(String str) {
        return e().a(str);
    }

    @VisibleForTesting
    void a(File file) {
        try {
            e.f.c.c.c.a(file);
            e.f.c.d.a.a(f3517f, "Created cache directory %s", file.getAbsolutePath());
        } catch (c.a e2) {
            this.f3521d.a(a.EnumC0181a.WRITE_CREATE_DIR, f3517f, "createRootDirectoryIfNecessary", e2);
            throw e2;
        }
    }
}
