package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;

/* compiled from: com.google.android.gms:play-services-cloud-messaging@@16.0.0 */
/* loaded from: classes.dex */
final class s extends q<Bundle> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public s(int i2, int i3, Bundle bundle) {
        super(i2, 1, bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.q
    public final void a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        a((s) bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.cloudmessaging.q
    public final boolean a() {
        return false;
    }
}
