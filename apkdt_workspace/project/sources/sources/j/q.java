package j;

import com.alipay.mobile.security.bio.utils.FileUtil;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Segment.java */
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    final byte[] f19673a;

    /* renamed from: b, reason: collision with root package name */
    int f19674b;

    /* renamed from: c, reason: collision with root package name */
    int f19675c;

    /* renamed from: d, reason: collision with root package name */
    boolean f19676d;

    /* renamed from: e, reason: collision with root package name */
    boolean f19677e;

    /* renamed from: f, reason: collision with root package name */
    q f19678f;

    /* renamed from: g, reason: collision with root package name */
    q f19679g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q() {
        this.f19673a = new byte[FileUtil.STREAM_BUFFER_SIZE];
        this.f19677e = true;
        this.f19676d = false;
    }

    public final q a(q qVar) {
        qVar.f19679g = this;
        qVar.f19678f = this.f19678f;
        this.f19678f.f19679g = qVar;
        this.f19678f = qVar;
        return qVar;
    }

    @Nullable
    public final q b() {
        q qVar = this.f19678f;
        if (qVar == this) {
            qVar = null;
        }
        q qVar2 = this.f19679g;
        qVar2.f19678f = this.f19678f;
        this.f19678f.f19679g = qVar2;
        this.f19678f = null;
        this.f19679g = null;
        return qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final q c() {
        this.f19676d = true;
        return new q(this.f19673a, this.f19674b, this.f19675c, true, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(byte[] bArr, int i2, int i3, boolean z, boolean z2) {
        this.f19673a = bArr;
        this.f19674b = i2;
        this.f19675c = i3;
        this.f19676d = z;
        this.f19677e = z2;
    }

    public final q a(int i2) {
        q a2;
        if (i2 > 0 && i2 <= this.f19675c - this.f19674b) {
            if (i2 >= 1024) {
                a2 = c();
            } else {
                a2 = r.a();
                System.arraycopy(this.f19673a, this.f19674b, a2.f19673a, 0, i2);
            }
            a2.f19675c = a2.f19674b + i2;
            this.f19674b += i2;
            this.f19679g.a(a2);
            return a2;
        }
        throw new IllegalArgumentException();
    }

    public final void a() {
        q qVar = this.f19679g;
        if (qVar != this) {
            if (qVar.f19677e) {
                int i2 = this.f19675c - this.f19674b;
                if (i2 > (8192 - qVar.f19675c) + (qVar.f19676d ? 0 : qVar.f19674b)) {
                    return;
                }
                a(this.f19679g, i2);
                b();
                r.a(this);
                return;
            }
            return;
        }
        throw new IllegalStateException();
    }

    public final void a(q qVar, int i2) {
        if (qVar.f19677e) {
            int i3 = qVar.f19675c;
            if (i3 + i2 > 8192) {
                if (!qVar.f19676d) {
                    int i4 = qVar.f19674b;
                    if ((i3 + i2) - i4 <= 8192) {
                        byte[] bArr = qVar.f19673a;
                        System.arraycopy(bArr, i4, bArr, 0, i3 - i4);
                        qVar.f19675c -= qVar.f19674b;
                        qVar.f19674b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            System.arraycopy(this.f19673a, this.f19674b, qVar.f19673a, qVar.f19675c, i2);
            qVar.f19675c += i2;
            this.f19674b += i2;
            return;
        }
        throw new IllegalArgumentException();
    }
}
