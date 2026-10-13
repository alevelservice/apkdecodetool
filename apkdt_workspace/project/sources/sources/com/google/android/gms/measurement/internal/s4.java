package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class s4 implements Callable<List<o8>> {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f13214e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f13215f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f13216g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ zzfk f13217h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s4(zzfk zzfkVar, String str, String str2, String str3) {
        this.f13217h = zzfkVar;
        this.f13214e = str;
        this.f13215f = str2;
        this.f13216g = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<o8> call() {
        g8 g8Var;
        g8 g8Var2;
        g8Var = this.f13217h.f13381e;
        g8Var.m();
        g8Var2 = this.f13217h.f13381e;
        return g8Var2.g().a(this.f13214e, this.f13215f, this.f13216g);
    }
}
