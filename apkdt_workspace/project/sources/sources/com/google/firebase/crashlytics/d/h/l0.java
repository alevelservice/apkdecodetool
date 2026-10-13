package com.google.firebase.crashlytics.d.h;

import android.os.Looper;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: Utils.java */
/* loaded from: classes.dex */
public final class l0 {

    /* renamed from: a, reason: collision with root package name */
    private static final FilenameFilter f14521a = new a();

    /* renamed from: b, reason: collision with root package name */
    private static final ExecutorService f14522b = w.a("awaitEvenIfOnMainThread task continuation executor");

    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    class a implements FilenameFilter {
        a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return true;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    class b<T> implements e.i.b.b.d.a<T, Void> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ e.i.b.b.d.i f14523a;

        b(e.i.b.b.d.i iVar) {
            this.f14523a = iVar;
        }

        @Override // e.i.b.b.d.a
        public Void a(@NonNull e.i.b.b.d.h<T> hVar) {
            if (hVar.e()) {
                this.f14523a.b((e.i.b.b.d.i) hVar.b());
                return null;
            }
            this.f14523a.b(hVar.a());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Utils.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Callable f14524e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ e.i.b.b.d.i f14525f;

        /* JADX INFO: Add missing generic type declarations: [T] */
        /* compiled from: Utils.java */
        /* loaded from: classes.dex */
        class a<T> implements e.i.b.b.d.a<T, Void> {
            a() {
            }

            @Override // e.i.b.b.d.a
            public Void a(@NonNull e.i.b.b.d.h<T> hVar) {
                if (hVar.e()) {
                    c.this.f14525f.a((e.i.b.b.d.i) hVar.b());
                    return null;
                }
                c.this.f14525f.a(hVar.a());
                return null;
            }
        }

        c(Callable callable, e.i.b.b.d.i iVar) {
            this.f14524e = callable;
            this.f14525f = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ((e.i.b.b.d.h) this.f14524e.call()).a(new a());
            } catch (Exception e2) {
                this.f14525f.a(e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(File file, File file2, int i2, Comparator<File> comparator) {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        File[] listFiles2 = file2.listFiles(f14521a);
        if (listFiles == null) {
            listFiles = new File[0];
        }
        if (listFiles2 == null) {
            listFiles2 = new File[0];
        }
        arrayList.addAll(Arrays.asList(listFiles));
        arrayList.addAll(Arrays.asList(listFiles2));
        return a(arrayList, i2, comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(File file, int i2, Comparator<File> comparator) {
        return a(file, f14521a, i2, comparator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(File file, FilenameFilter filenameFilter, int i2, Comparator<File> comparator) {
        File[] listFiles = file.listFiles(filenameFilter);
        if (listFiles == null) {
            return 0;
        }
        return a((List<File>) Arrays.asList(listFiles), i2, comparator);
    }

    static int a(List<File> list, int i2, Comparator<File> comparator) {
        int size = list.size();
        Collections.sort(list, comparator);
        for (File file : list) {
            if (size <= i2) {
                return size;
            }
            a(file);
            size--;
        }
        return size;
    }

    public static <T> e.i.b.b.d.h<T> a(e.i.b.b.d.h<T> hVar, e.i.b.b.d.h<T> hVar2) {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        b bVar = new b(iVar);
        hVar.a(bVar);
        hVar2.a(bVar);
        return iVar.a();
    }

    public static <T> e.i.b.b.d.h<T> a(Executor executor, Callable<e.i.b.b.d.h<T>> callable) {
        e.i.b.b.d.i iVar = new e.i.b.b.d.i();
        executor.execute(new c(callable, iVar));
        return iVar.a();
    }

    public static <T> T a(e.i.b.b.d.h<T> hVar) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        hVar.a(f14522b, k0.a(countDownLatch));
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } else {
            countDownLatch.await();
        }
        if (hVar.e()) {
            return hVar.b();
        }
        if (!hVar.c()) {
            if (hVar.d()) {
                throw new IllegalStateException(hVar.a());
            }
            throw new TimeoutException();
        }
        throw new CancellationException("Task is already canceled");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object a(CountDownLatch countDownLatch, e.i.b.b.d.h hVar) {
        countDownLatch.countDown();
        return null;
    }

    private static void a(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                a(file2);
            }
        }
        file.delete();
    }
}
