package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import javax.inject.Inject;

/* compiled from: CreationContextFactory.java */
/* loaded from: classes.dex */
class j {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4373a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4374b;

    /* renamed from: c, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f4375c;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public j(Context context, @WallTime com.google.android.datatransport.runtime.time.a aVar, @Monotonic com.google.android.datatransport.runtime.time.a aVar2) {
        this.f4373a = context;
        this.f4374b = aVar;
        this.f4375c = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i a(String str) {
        return i.a(this.f4373a, this.f4374b, this.f4375c, str);
    }
}
