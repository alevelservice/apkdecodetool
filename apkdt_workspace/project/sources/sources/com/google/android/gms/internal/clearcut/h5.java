package com.google.android.gms.internal.clearcut;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class h5 extends p4<h5> implements Cloneable {

    /* renamed from: g, reason: collision with root package name */
    private byte[] f11437g = w4.f11596e;

    /* renamed from: h, reason: collision with root package name */
    private String f11438h = "";

    /* renamed from: i, reason: collision with root package name */
    private byte[][] f11439i = w4.f11595d;

    public h5() {
        this.f11527f = null;
        this.f11575e = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public final h5 clone() {
        try {
            h5 h5Var = (h5) super.clone();
            byte[][] bArr = this.f11439i;
            if (bArr != null && bArr.length > 0) {
                h5Var.f11439i = (byte[][]) bArr.clone();
            }
            return h5Var;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final void a(n4 n4Var) {
        if (!Arrays.equals(this.f11437g, w4.f11596e)) {
            n4Var.a(1, this.f11437g);
        }
        byte[][] bArr = this.f11439i;
        if (bArr != null && bArr.length > 0) {
            int i2 = 0;
            while (true) {
                byte[][] bArr2 = this.f11439i;
                if (i2 >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i2];
                if (bArr3 != null) {
                    n4Var.a(2, bArr3);
                }
                i2++;
            }
        }
        String str = this.f11438h;
        if (str != null && !str.equals("")) {
            n4Var.a(4, this.f11438h);
        }
        super.a(n4Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final int b() {
        int b2 = super.b();
        if (!Arrays.equals(this.f11437g, w4.f11596e)) {
            b2 += n4.b(1, this.f11437g);
        }
        byte[][] bArr = this.f11439i;
        if (bArr != null && bArr.length > 0) {
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                byte[][] bArr2 = this.f11439i;
                if (i2 >= bArr2.length) {
                    break;
                }
                byte[] bArr3 = bArr2[i2];
                if (bArr3 != null) {
                    i4++;
                    i3 += n4.b(bArr3);
                }
                i2++;
            }
            b2 = b2 + i3 + (i4 * 1);
        }
        String str = this.f11438h;
        return (str == null || str.equals("")) ? b2 : b2 + n4.b(4, this.f11438h);
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: c */
    public final /* synthetic */ u4 clone() {
        return (h5) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.p4
    /* renamed from: d */
    public final /* synthetic */ h5 clone() {
        return (h5) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h5)) {
            return false;
        }
        h5 h5Var = (h5) obj;
        if (!Arrays.equals(this.f11437g, h5Var.f11437g)) {
            return false;
        }
        String str = this.f11438h;
        if (str == null) {
            if (h5Var.f11438h != null) {
                return false;
            }
        } else if (!str.equals(h5Var.f11438h)) {
            return false;
        }
        if (!t4.a(this.f11439i, h5Var.f11439i)) {
            return false;
        }
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            return this.f11527f.equals(h5Var.f11527f);
        }
        r4 r4Var2 = h5Var.f11527f;
        return r4Var2 == null || r4Var2.a();
    }

    public final int hashCode() {
        int hashCode = (((h5.class.getName().hashCode() + 527) * 31) + Arrays.hashCode(this.f11437g)) * 31;
        String str = this.f11438h;
        int i2 = 0;
        int hashCode2 = (((((hashCode + (str == null ? 0 : str.hashCode())) * 31) + t4.a(this.f11439i)) * 31) + 1237) * 31;
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            i2 = this.f11527f.hashCode();
        }
        return hashCode2 + i2;
    }
}
