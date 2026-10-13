package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private final SparseIntArray f5316a = new SparseIntArray();

    /* renamed from: b, reason: collision with root package name */
    private com.google.android.gms.common.d f5317b;

    public j(@NonNull com.google.android.gms.common.d dVar) {
        m.a(dVar);
        this.f5317b = dVar;
    }

    public int a(@NonNull Context context, @NonNull a.f fVar) {
        m.a(context);
        m.a(fVar);
        if (!fVar.g()) {
            return 0;
        }
        int h2 = fVar.h();
        int i2 = this.f5316a.get(h2, -1);
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        while (true) {
            if (i3 < this.f5316a.size()) {
                int keyAt = this.f5316a.keyAt(i3);
                if (keyAt > h2 && this.f5316a.get(keyAt) == 0) {
                    i2 = 0;
                    break;
                }
                i3++;
            } else {
                break;
            }
        }
        if (i2 == -1) {
            i2 = this.f5317b.a(context, h2);
        }
        this.f5316a.put(h2, i2);
        return i2;
    }

    public void a() {
        this.f5316a.clear();
    }
}
