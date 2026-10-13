package io.flutter.embedding.engine;

import android.content.Intent;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: FlutterShellArgs.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private Set<String> f19024a;

    public d(@NonNull String[] strArr) {
        this.f19024a = new HashSet(Arrays.asList(strArr));
    }

    @NonNull
    public static d a(@NonNull Intent intent) {
        ArrayList arrayList = new ArrayList();
        if (intent.getBooleanExtra("trace-startup", false)) {
            arrayList.add("--trace-startup");
        }
        if (intent.getBooleanExtra("start-paused", false)) {
            arrayList.add("--start-paused");
        }
        int intExtra = intent.getIntExtra("observatory-port", 0);
        if (intExtra > 0) {
            arrayList.add("--observatory-port=" + Integer.toString(intExtra));
        }
        if (intent.getBooleanExtra("disable-service-auth-codes", false)) {
            arrayList.add("--disable-service-auth-codes");
        }
        if (intent.getBooleanExtra("endless-trace-buffer", false)) {
            arrayList.add("--endless-trace-buffer");
        }
        if (intent.getBooleanExtra("use-test-fonts", false)) {
            arrayList.add("--use-test-fonts");
        }
        if (intent.getBooleanExtra("enable-dart-profiling", false)) {
            arrayList.add("--enable-dart-profiling");
        }
        if (intent.getBooleanExtra("enable-software-rendering", false)) {
            arrayList.add("--enable-software-rendering");
        }
        if (intent.getBooleanExtra("skia-deterministic-rendering", false)) {
            arrayList.add("--skia-deterministic-rendering");
        }
        if (intent.getBooleanExtra("trace-skia", false)) {
            arrayList.add("--trace-skia");
        }
        if (intent.getBooleanExtra("trace-systrace", false)) {
            arrayList.add("--trace-systrace");
        }
        if (intent.getBooleanExtra("dump-skp-on-shader-compilation", false)) {
            arrayList.add("--dump-skp-on-shader-compilation");
        }
        if (intent.getBooleanExtra("cache-sksl", false)) {
            arrayList.add("--cache-sksl");
        }
        if (intent.getBooleanExtra("purge-persistent-cache", false)) {
            arrayList.add("--purge-persistent-cache");
        }
        if (intent.getBooleanExtra("verbose-logging", false)) {
            arrayList.add("--verbose-logging");
        }
        if (intent.hasExtra("dart-flags")) {
            arrayList.add("--dart-flags=" + intent.getStringExtra("dart-flags"));
        }
        return new d(arrayList);
    }

    public d(@NonNull List<String> list) {
        this.f19024a = new HashSet(list);
    }

    @NonNull
    public String[] a() {
        return (String[]) this.f19024a.toArray(new String[this.f19024a.size()]);
    }
}
