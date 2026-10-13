package com.google.android.gms.internal.clearcut;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
/* loaded from: classes.dex */
public final class d3<FieldDescriptorType> extends c3<FieldDescriptorType, Object> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d3(int i2) {
        super(i2, null);
    }

    @Override // com.google.android.gms.internal.clearcut.c3
    public final void e() {
        if (!a()) {
            for (int i2 = 0; i2 < b(); i2++) {
                Map.Entry<FieldDescriptorType, Object> a2 = a(i2);
                if (((x0) a2.getKey()).D()) {
                    a2.setValue(Collections.unmodifiableList((List) a2.getValue()));
                }
            }
            for (Map.Entry<FieldDescriptorType, Object> entry : c()) {
                if (((x0) entry.getKey()).D()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.e();
    }
}
