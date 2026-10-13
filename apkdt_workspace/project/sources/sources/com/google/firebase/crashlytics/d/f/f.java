package com.google.firebase.crashlytics.d.f;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: UnavailableAnalyticsEventLogger.java */
/* loaded from: classes.dex */
public class f implements a {
    @Override // com.google.firebase.crashlytics.d.f.a
    public void a(@NonNull String str, @Nullable Bundle bundle) {
        com.google.firebase.crashlytics.d.b.a().a("Skipping logging Crashlytics event to Firebase, no Firebase Analytics");
    }
}
