package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.annotation.MainThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class LifecycleCallback {

    /* renamed from: e, reason: collision with root package name */
    @KeepForSdk
    protected final j f5027e;

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public LifecycleCallback(j jVar) {
        this.f5027e = jVar;
    }

    @KeepForSdk
    protected static j a(i iVar) {
        if (iVar.c()) {
            return r1.a(iVar.b());
        }
        if (iVar.d()) {
            return o1.a(iVar.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static j getChimeraLifecycleFragmentImpl(i iVar) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    @KeepForSdk
    @MainThread
    public void a(int i2, int i3, Intent intent) {
    }

    @KeepForSdk
    @MainThread
    public void a(Bundle bundle) {
    }

    @KeepForSdk
    @MainThread
    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @KeepForSdk
    @MainThread
    public void b() {
    }

    @KeepForSdk
    @MainThread
    public void b(Bundle bundle) {
    }

    @KeepForSdk
    @MainThread
    public void c() {
    }

    @KeepForSdk
    @MainThread
    public void d() {
    }

    @KeepForSdk
    @MainThread
    public void e() {
    }

    @KeepForSdk
    public static j a(Activity activity) {
        return a(new i(activity));
    }

    @KeepForSdk
    public Activity a() {
        return this.f5027e.a();
    }
}
