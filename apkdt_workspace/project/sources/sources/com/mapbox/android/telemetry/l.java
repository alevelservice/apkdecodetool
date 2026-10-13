package com.mapbox.android.telemetry;

import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* compiled from: ConcurrentQueue.java */
/* loaded from: classes2.dex */
class l<T> {

    /* renamed from: a, reason: collision with root package name */
    private final Queue<T> f15616a = new ConcurrentLinkedQueue();

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(T t) {
        try {
            return this.f15616a.add(t);
        } catch (Exception e2) {
            e2.toString();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f15616a.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<T> a() {
        ArrayList arrayList = new ArrayList(this.f15616a.size());
        try {
            arrayList.addAll(this.f15616a);
            this.f15616a.clear();
        } catch (Exception e2) {
            e2.toString();
        }
        return arrayList;
    }
}
