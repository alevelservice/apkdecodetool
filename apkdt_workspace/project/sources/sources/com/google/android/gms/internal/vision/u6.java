package com.google.android.gms.internal.vision;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class u6<FieldDescriptorType> extends v6<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u6(int i2) {
        super(i2, null);
    }

    @Override // com.google.android.gms.internal.vision.v6
    public final void b() {
        if (!a()) {
            for (int i2 = 0; i2 < c(); i2++) {
                Map.Entry<FieldDescriptorType, Object> a2 = a(i2);
                if (((k4) a2.getKey()).A()) {
                    a2.setValue(Collections.unmodifiableList((List) a2.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : d()) {
                if (((k4) entry.getKey()).A()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.b();
    }
}
