package io.flutter.plugin.platform;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PlatformViewRegistryImpl.java */
/* loaded from: classes2.dex */
public class i implements h {

    /* renamed from: a, reason: collision with root package name */
    private final Map<String, g> f19299a = new HashMap();

    @Override // io.flutter.plugin.platform.h
    public boolean a(String str, g gVar) {
        if (this.f19299a.containsKey(str)) {
            return false;
        }
        this.f19299a.put(str, gVar);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public g a(String str) {
        return this.f19299a.get(str);
    }
}
