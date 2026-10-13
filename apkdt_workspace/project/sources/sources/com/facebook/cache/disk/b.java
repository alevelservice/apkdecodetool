package com.facebook.cache.disk;

import android.content.Context;
import com.facebook.common.internal.j;
import java.io.File;
import javax.annotation.Nullable;

/* compiled from: DiskCacheConfig.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a, reason: collision with root package name */
    private final int f3473a;

    /* renamed from: b, reason: collision with root package name */
    private final String f3474b;

    /* renamed from: c, reason: collision with root package name */
    private final j<File> f3475c;

    /* renamed from: d, reason: collision with root package name */
    private final long f3476d;

    /* renamed from: e, reason: collision with root package name */
    private final long f3477e;

    /* renamed from: f, reason: collision with root package name */
    private final long f3478f;

    /* renamed from: g, reason: collision with root package name */
    private final g f3479g;

    /* renamed from: h, reason: collision with root package name */
    private final e.f.b.a.a f3480h;

    /* renamed from: i, reason: collision with root package name */
    private final e.f.b.a.c f3481i;

    /* renamed from: j, reason: collision with root package name */
    private final e.f.c.a.b f3482j;

    /* renamed from: k, reason: collision with root package name */
    private final Context f3483k;

    /* renamed from: l, reason: collision with root package name */
    private final boolean f3484l;

    /* compiled from: DiskCacheConfig.java */
    /* renamed from: com.facebook.cache.disk.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0062b {

        /* renamed from: a, reason: collision with root package name */
        private int f3485a;

        /* renamed from: b, reason: collision with root package name */
        private String f3486b;

        /* renamed from: c, reason: collision with root package name */
        private j<File> f3487c;

        /* renamed from: d, reason: collision with root package name */
        private long f3488d;

        /* renamed from: e, reason: collision with root package name */
        private long f3489e;

        /* renamed from: f, reason: collision with root package name */
        private long f3490f;

        /* renamed from: g, reason: collision with root package name */
        private g f3491g;

        /* renamed from: h, reason: collision with root package name */
        private e.f.b.a.a f3492h;

        /* renamed from: i, reason: collision with root package name */
        private e.f.b.a.c f3493i;

        /* renamed from: j, reason: collision with root package name */
        private e.f.c.a.b f3494j;

        /* renamed from: k, reason: collision with root package name */
        private boolean f3495k;

        /* renamed from: l, reason: collision with root package name */
        @Nullable
        private final Context f3496l;

        /* compiled from: DiskCacheConfig.java */
        /* renamed from: com.facebook.cache.disk.b$b$a */
        /* loaded from: classes.dex */
        class a implements j<File> {
            a() {
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.facebook.common.internal.j
            public File get() {
                return C0062b.this.f3496l.getApplicationContext().getCacheDir();
            }
        }

        private C0062b(@Nullable Context context) {
            this.f3485a = 1;
            this.f3486b = "image_cache";
            this.f3488d = 41943040L;
            this.f3489e = 10485760L;
            this.f3490f = 2097152L;
            this.f3491g = new com.facebook.cache.disk.a();
            this.f3496l = context;
        }

        public b a() {
            com.facebook.common.internal.h.b((this.f3487c == null && this.f3496l == null) ? false : true, "Either a non-null context or a base directory path or supplier must be provided.");
            if (this.f3487c == null && this.f3496l != null) {
                this.f3487c = new a();
            }
            return new b(this);
        }
    }

    public String a() {
        return this.f3474b;
    }

    public j<File> b() {
        return this.f3475c;
    }

    public e.f.b.a.a c() {
        return this.f3480h;
    }

    public e.f.b.a.c d() {
        return this.f3481i;
    }

    public Context e() {
        return this.f3483k;
    }

    public long f() {
        return this.f3476d;
    }

    public e.f.c.a.b g() {
        return this.f3482j;
    }

    public g h() {
        return this.f3479g;
    }

    public boolean i() {
        return this.f3484l;
    }

    public long j() {
        return this.f3477e;
    }

    public long k() {
        return this.f3478f;
    }

    public int l() {
        return this.f3473a;
    }

    private b(C0062b c0062b) {
        e.f.b.a.a aVar;
        e.f.b.a.c cVar;
        e.f.c.a.b bVar;
        this.f3473a = c0062b.f3485a;
        String str = c0062b.f3486b;
        com.facebook.common.internal.h.a(str);
        this.f3474b = str;
        j<File> jVar = c0062b.f3487c;
        com.facebook.common.internal.h.a(jVar);
        this.f3475c = jVar;
        this.f3476d = c0062b.f3488d;
        this.f3477e = c0062b.f3489e;
        this.f3478f = c0062b.f3490f;
        g gVar = c0062b.f3491g;
        com.facebook.common.internal.h.a(gVar);
        this.f3479g = gVar;
        if (c0062b.f3492h != null) {
            aVar = c0062b.f3492h;
        } else {
            aVar = e.f.b.a.g.a();
        }
        this.f3480h = aVar;
        if (c0062b.f3493i != null) {
            cVar = c0062b.f3493i;
        } else {
            cVar = e.f.b.a.h.a();
        }
        this.f3481i = cVar;
        if (c0062b.f3494j != null) {
            bVar = c0062b.f3494j;
        } else {
            bVar = e.f.c.a.c.a();
        }
        this.f3482j = bVar;
        this.f3483k = c0062b.f3496l;
        this.f3484l = c0062b.f3495k;
    }

    public static C0062b a(@Nullable Context context) {
        return new C0062b(context);
    }
}
