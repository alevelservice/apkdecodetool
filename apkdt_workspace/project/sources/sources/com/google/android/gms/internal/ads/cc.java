package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cc {

    /* renamed from: a, reason: collision with root package name */
    private final String[] f5971a;

    /* renamed from: b, reason: collision with root package name */
    private final double[] f5972b;

    /* renamed from: c, reason: collision with root package name */
    private final double[] f5973c;

    /* renamed from: d, reason: collision with root package name */
    private final int[] f5974d;

    /* renamed from: e, reason: collision with root package name */
    private int f5975e;

    private cc(hc hcVar) {
        List list;
        List list2;
        List list3;
        List list4;
        list = hcVar.f7034b;
        int size = list.size();
        list2 = hcVar.f7033a;
        this.f5971a = (String[]) list2.toArray(new String[size]);
        list3 = hcVar.f7034b;
        this.f5972b = a((List<Double>) list3);
        list4 = hcVar.f7035c;
        this.f5973c = a((List<Double>) list4);
        this.f5974d = new int[size];
        this.f5975e = 0;
    }

    private static double[] a(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = list.get(i2).doubleValue();
        }
        return dArr;
    }

    public final void a(double d2) {
        this.f5975e++;
        int i2 = 0;
        while (true) {
            double[] dArr = this.f5973c;
            if (i2 >= dArr.length) {
                return;
            }
            if (dArr[i2] <= d2 && d2 < this.f5972b[i2]) {
                int[] iArr = this.f5974d;
                iArr[i2] = iArr[i2] + 1;
            }
            if (d2 < this.f5973c[i2]) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final List<ec> a() {
        ArrayList arrayList = new ArrayList(this.f5971a.length);
        int i2 = 0;
        while (true) {
            String[] strArr = this.f5971a;
            if (i2 >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i2];
            double d2 = this.f5973c[i2];
            double d3 = this.f5972b[i2];
            int[] iArr = this.f5974d;
            double d4 = iArr[i2];
            double d5 = this.f5975e;
            Double.isNaN(d4);
            Double.isNaN(d5);
            arrayList.add(new ec(str, d2, d3, d4 / d5, iArr[i2]));
            i2++;
        }
    }
}
