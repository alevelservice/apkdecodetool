package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: FragmentHostCallback.java */
/* loaded from: classes.dex */
public abstract class f<E> extends c {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final Activity f2190e;

    /* renamed from: f, reason: collision with root package name */
    @NonNull
    private final Context f2191f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    private final Handler f2192g;

    /* renamed from: h, reason: collision with root package name */
    private final int f2193h;

    /* renamed from: i, reason: collision with root package name */
    final h f2194i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(@NonNull FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
    }

    @Override // androidx.fragment.app.c
    @Nullable
    public View a(int i2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Fragment fragment) {
    }

    public void a(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i2, @Nullable Bundle bundle) {
        if (i2 == -1) {
            this.f2191f.startActivity(intent);
            return;
        }
        throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
    }

    public void a(@NonNull Fragment fragment, @NonNull String[] strArr, int i2) {
    }

    public void a(@NonNull String str, @Nullable FileDescriptor fileDescriptor, @NonNull PrintWriter printWriter, @Nullable String[] strArr) {
    }

    @Override // androidx.fragment.app.c
    public boolean a() {
        return true;
    }

    public boolean a(@NonNull String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Activity b() {
        return this.f2190e;
    }

    public boolean b(@NonNull Fragment fragment) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Context c() {
        return this.f2191f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Handler d() {
        return this.f2192g;
    }

    @Nullable
    public abstract E e();

    @NonNull
    public LayoutInflater f() {
        return LayoutInflater.from(this.f2191f);
    }

    public int g() {
        return this.f2193h;
    }

    public boolean h() {
        return true;
    }

    public void i() {
    }

    f(@Nullable Activity activity, @NonNull Context context, @NonNull Handler handler, int i2) {
        this.f2194i = new h();
        this.f2190e = activity;
        a.i.m.i.a(context, "context == null");
        this.f2191f = context;
        a.i.m.i.a(handler, "handler == null");
        this.f2192g = handler;
        this.f2193h = i2;
    }

    public void a(@NonNull Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i2, @Nullable Intent intent, int i3, int i4, int i5, @Nullable Bundle bundle) {
        if (i2 == -1) {
            androidx.core.app.a.a(this.f2190e, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
    }
}
