package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public final class k5 extends p4<k5> implements Cloneable {

    /* renamed from: i, reason: collision with root package name */
    private static volatile k5[] f11476i;

    /* renamed from: g, reason: collision with root package name */
    private String f11477g = "";

    /* renamed from: h, reason: collision with root package name */
    private String f11478h = "";

    public k5() {
        this.f11527f = null;
        this.f11575e = -1;
    }

    public static k5[] e() {
        if (f11476i == null) {
            synchronized (t4.f11567a) {
                if (f11476i == null) {
                    f11476i = new k5[0];
                }
            }
        }
        return f11476i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final k5 clone() {
        try {
            return (k5) super.clone();
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final void a(n4 n4Var) {
        String str = this.f11477g;
        if (str != null && !str.equals("")) {
            n4Var.a(1, this.f11477g);
        }
        String str2 = this.f11478h;
        if (str2 != null && !str2.equals("")) {
            n4Var.a(2, this.f11478h);
        }
        super.a(n4Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    public final int b() {
        int b2 = super.b();
        String str = this.f11477g;
        if (str != null && !str.equals("")) {
            b2 += n4.b(1, this.f11477g);
        }
        String str2 = this.f11478h;
        return (str2 == null || str2.equals("")) ? b2 : b2 + n4.b(2, this.f11478h);
    }

    @Override // com.google.android.gms.internal.clearcut.p4, com.google.android.gms.internal.clearcut.u4
    /* renamed from: c */
    public final /* synthetic */ u4 clone() {
        return (k5) clone();
    }

    @Override // com.google.android.gms.internal.clearcut.p4
    /* renamed from: d */
    public final /* synthetic */ k5 clone() {
        return (k5) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k5)) {
            return false;
        }
        k5 k5Var = (k5) obj;
        String str = this.f11477g;
        if (str == null) {
            if (k5Var.f11477g != null) {
                return false;
            }
        } else if (!str.equals(k5Var.f11477g)) {
            return false;
        }
        String str2 = this.f11478h;
        if (str2 == null) {
            if (k5Var.f11478h != null) {
                return false;
            }
        } else if (!str2.equals(k5Var.f11478h)) {
            return false;
        }
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            return this.f11527f.equals(k5Var.f11527f);
        }
        r4 r4Var2 = k5Var.f11527f;
        return r4Var2 == null || r4Var2.a();
    }

    public final int hashCode() {
        int hashCode = (k5.class.getName().hashCode() + 527) * 31;
        String str = this.f11477g;
        int i2 = 0;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f11478h;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        r4 r4Var = this.f11527f;
        if (r4Var != null && !r4Var.a()) {
            i2 = this.f11527f.hashCode();
        }
        return hashCode3 + i2;
    }
}
