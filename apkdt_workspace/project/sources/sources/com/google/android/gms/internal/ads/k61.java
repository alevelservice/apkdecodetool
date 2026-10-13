package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.j61;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPairGenerator;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k61<T_WRAPPER extends j61<T_ENGINE>, T_ENGINE> {

    /* renamed from: d, reason: collision with root package name */
    private static final Logger f7621d = Logger.getLogger(k61.class.getName());

    /* renamed from: e, reason: collision with root package name */
    private static final List<Provider> f7622e;

    /* renamed from: f, reason: collision with root package name */
    public static final k61<n61, Cipher> f7623f;

    /* renamed from: g, reason: collision with root package name */
    public static final k61<r61, Mac> f7624g;

    /* renamed from: h, reason: collision with root package name */
    public static final k61<m61, KeyAgreement> f7625h;

    /* renamed from: i, reason: collision with root package name */
    public static final k61<o61, KeyPairGenerator> f7626i;

    /* renamed from: j, reason: collision with root package name */
    public static final k61<p61, KeyFactory> f7627j;

    /* renamed from: a, reason: collision with root package name */
    private T_WRAPPER f7628a;

    /* renamed from: b, reason: collision with root package name */
    private List<Provider> f7629b = f7622e;

    /* renamed from: c, reason: collision with root package name */
    private boolean f7630c = true;

    static {
        if (z61.a()) {
            String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < 2; i2++) {
                String str = strArr[i2];
                Provider provider = Security.getProvider(str);
                if (provider != null) {
                    arrayList.add(provider);
                } else {
                    f7621d.logp(Level.INFO, "com.google.crypto.tink.subtle.EngineFactory", "toProviderList", String.format("Provider %s not available", str));
                }
            }
            f7622e = arrayList;
        } else {
            f7622e = new ArrayList();
        }
        f7623f = new k61<>(new n61());
        f7624g = new k61<>(new r61());
        new k61(new s61());
        new k61(new q61());
        f7625h = new k61<>(new m61());
        f7626i = new k61<>(new o61());
        f7627j = new k61<>(new p61());
    }

    private k61(T_WRAPPER t_wrapper) {
        this.f7628a = t_wrapper;
    }

    public final T_ENGINE a(String str) {
        Iterator<Provider> it = this.f7629b.iterator();
        Exception exc = null;
        while (it.hasNext()) {
            try {
                return (T_ENGINE) this.f7628a.a(str, it.next());
            } catch (Exception e2) {
                if (exc == null) {
                    exc = e2;
                }
            }
        }
        if (this.f7630c) {
            return (T_ENGINE) this.f7628a.a(str, null);
        }
        throw new GeneralSecurityException("No good Provider found.", exc);
    }
}
