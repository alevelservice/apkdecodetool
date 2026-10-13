package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class d6<FieldDescriptorType> extends e6<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d6(int i2) {
        super(i2, null);
    }

    @Override // com.google.android.gms.internal.measurement.e6
    public final void b() {
        if (!a()) {
            for (int i2 = 0; i2 < c(); i2++) {
                Map.Entry<FieldDescriptorType, Object> a2 = a(i2);
                if (((t3) a2.getKey()).H()) {
                    a2.setValue(Collections.unmodifiableList((List) a2.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : d()) {
                if (((t3) entry.getKey()).H()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.b();
    }
}
