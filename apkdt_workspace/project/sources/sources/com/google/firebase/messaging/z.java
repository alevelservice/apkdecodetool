package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class z {

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f15272a;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f15276e;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("internalQueue")
    private final ArrayDeque<String> f15275d = new ArrayDeque<>();

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("internalQueue")
    private boolean f15277f = false;

    /* renamed from: b, reason: collision with root package name */
    private final String f15273b = "topic_operation_queue";

    /* renamed from: c, reason: collision with root package name */
    private final String f15274c = ",";

    private z(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f15272a = sharedPreferences;
        this.f15276e = executor;
    }

    @WorkerThread
    private void d() {
        synchronized (this.f15275d) {
            this.f15275d.clear();
            String string = this.f15272a.getString(this.f15273b, "");
            if (!TextUtils.isEmpty(string) && string.contains(this.f15274c)) {
                for (String str : string.split(this.f15274c, -1)) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f15275d.add(str);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a() {
        synchronized (this.f15275d) {
            this.f15272a.edit().putString(this.f15273b, c()).commit();
        }
    }

    private void f() {
        this.f15276e.execute(new Runnable(this) { // from class: com.google.firebase.messaging.y

            /* renamed from: e, reason: collision with root package name */
            private final z f15271e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f15271e = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f15271e.a();
            }
        });
    }

    public boolean a(@NonNull String str) {
        boolean add;
        if (TextUtils.isEmpty(str) || str.contains(this.f15274c)) {
            return false;
        }
        synchronized (this.f15275d) {
            add = this.f15275d.add(str);
            a(add);
        }
        return add;
    }

    @Nullable
    public String b() {
        String peek;
        synchronized (this.f15275d) {
            peek = this.f15275d.peek();
        }
        return peek;
    }

    @NonNull
    @GuardedBy("internalQueue")
    public String c() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f15275d.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(this.f15274c);
        }
        return sb.toString();
    }

    @GuardedBy("internalQueue")
    private boolean a(boolean z) {
        if (!z || this.f15277f) {
            return z;
        }
        f();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static z a(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        z zVar = new z(sharedPreferences, "topic_operation_queue", ",", executor);
        zVar.d();
        return zVar;
    }

    public boolean a(@Nullable Object obj) {
        boolean remove;
        synchronized (this.f15275d) {
            remove = this.f15275d.remove(obj);
            a(remove);
        }
        return remove;
    }
}
