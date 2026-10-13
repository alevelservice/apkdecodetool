package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y4 {

    /* renamed from: e, reason: collision with root package name */
    private static final Comparator<byte[]> f10476e = new u5();

    /* renamed from: a, reason: collision with root package name */
    private final List<byte[]> f10477a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final List<byte[]> f10478b = new ArrayList(64);

    /* renamed from: c, reason: collision with root package name */
    private int f10479c = 0;

    /* renamed from: d, reason: collision with root package name */
    private final int f10480d = 4096;

    public y4(int i2) {
    }

    public final synchronized byte[] a(int i2) {
        for (int i3 = 0; i3 < this.f10478b.size(); i3++) {
            byte[] bArr = this.f10478b.get(i3);
            if (bArr.length >= i2) {
                this.f10479c -= bArr.length;
                this.f10478b.remove(i3);
                this.f10477a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i2];
    }

    public final synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f10480d) {
                this.f10477a.add(bArr);
                int binarySearch = Collections.binarySearch(this.f10478b, bArr, f10476e);
                if (binarySearch < 0) {
                    binarySearch = (-binarySearch) - 1;
                }
                this.f10478b.add(binarySearch, bArr);
                this.f10479c += bArr.length;
                a();
            }
        }
    }

    private final synchronized void a() {
        while (this.f10479c > this.f10480d) {
            byte[] remove = this.f10477a.remove(0);
            this.f10478b.remove(remove);
            this.f10479c -= remove.length;
        }
    }
}
