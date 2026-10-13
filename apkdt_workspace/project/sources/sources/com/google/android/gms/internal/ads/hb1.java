package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class hb1<FieldDescriptorType> extends ib1<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public hb1(int i2) {
        super(i2, null);
    }

    @Override // com.google.android.gms.internal.ads.ib1
    public final void b() {
        if (!a()) {
            for (int i2 = 0; i2 < c(); i2++) {
                Map.Entry<FieldDescriptorType, Object> a2 = a(i2);
                if (((v81) a2.getKey()).M()) {
                    a2.setValue(Collections.unmodifiableList((List) a2.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : d()) {
                if (((v81) entry.getKey()).M()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.b();
    }
}
