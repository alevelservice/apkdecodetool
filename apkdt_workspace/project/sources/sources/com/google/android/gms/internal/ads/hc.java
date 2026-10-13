package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hc {

    /* renamed from: a, reason: collision with root package name */
    private final List<String> f7033a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final List<Double> f7034b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    private final List<Double> f7035c = new ArrayList();

    public final hc a(String str, double d2, double d3) {
        int i2 = 0;
        while (i2 < this.f7033a.size()) {
            double doubleValue = this.f7035c.get(i2).doubleValue();
            double doubleValue2 = this.f7034b.get(i2).doubleValue();
            if (d2 < doubleValue || (doubleValue == d2 && d3 < doubleValue2)) {
                break;
            }
            i2++;
        }
        this.f7033a.add(i2, str);
        this.f7035c.add(i2, Double.valueOf(d2));
        this.f7034b.add(i2, Double.valueOf(d3));
        return this;
    }

    public final cc a() {
        return new cc(this);
    }
}
