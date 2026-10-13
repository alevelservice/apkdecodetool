package com.google.firebase;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public class i extends Exception {
    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public i() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@NonNull String str) {
        super(str);
        m.a(str, (Object) "Detail message must not be empty");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@NonNull String str, Throwable th) {
        super(str, th);
        m.a(str, (Object) "Detail message must not be empty");
    }
}
