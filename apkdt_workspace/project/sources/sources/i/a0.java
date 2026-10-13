package i;

import java.io.File;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* compiled from: RequestBody.java */
/* loaded from: classes2.dex */
public abstract class a0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RequestBody.java */
    /* loaded from: classes2.dex */
    public class a extends a0 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ u f18383a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f18384b;

        /* renamed from: c, reason: collision with root package name */
        final /* synthetic */ byte[] f18385c;

        /* renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f18386d;

        a(u uVar, int i2, byte[] bArr, int i3) {
            this.f18383a = uVar;
            this.f18384b = i2;
            this.f18385c = bArr;
            this.f18386d = i3;
        }

        @Override // i.a0
        public long a() {
            return this.f18384b;
        }

        @Override // i.a0
        @Nullable
        public u b() {
            return this.f18383a;
        }

        @Override // i.a0
        public void a(j.d dVar) {
            dVar.write(this.f18385c, this.f18386d, this.f18384b);
        }
    }

    /* compiled from: RequestBody.java */
    /* loaded from: classes2.dex */
    class b extends a0 {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ u f18387a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ File f18388b;

        b(u uVar, File file) {
            this.f18387a = uVar;
            this.f18388b = file;
        }

        @Override // i.a0
        public long a() {
            return this.f18388b.length();
        }

        @Override // i.a0
        @Nullable
        public u b() {
            return this.f18387a;
        }

        @Override // i.a0
        public void a(j.d dVar) {
            j.u uVar = null;
            try {
                uVar = j.n.a(this.f18388b);
                dVar.a(uVar);
            } finally {
                i.g0.c.a(uVar);
            }
        }
    }

    public static a0 a(@Nullable u uVar, String str) {
        Charset charset = i.g0.c.f18456i;
        if (uVar != null && (charset = uVar.a()) == null) {
            charset = i.g0.c.f18456i;
            uVar = u.b(uVar + "; charset=utf-8");
        }
        return a(uVar, str.getBytes(charset));
    }

    public abstract long a();

    public abstract void a(j.d dVar);

    @Nullable
    public abstract u b();

    public static a0 a(@Nullable u uVar, byte[] bArr) {
        return a(uVar, bArr, 0, bArr.length);
    }

    public static a0 a(@Nullable u uVar, byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            i.g0.c.a(bArr.length, i2, i3);
            return new a(uVar, i3, bArr, i2);
        }
        throw new NullPointerException("content == null");
    }

    public static a0 a(@Nullable u uVar, File file) {
        if (file != null) {
            return new b(uVar, file);
        }
        throw new NullPointerException("file == null");
    }
}
