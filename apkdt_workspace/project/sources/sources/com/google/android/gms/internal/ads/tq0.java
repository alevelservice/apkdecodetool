package com.google.android.gms.internal.ads;

import java.util.HashSet;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tq0 implements oe1<no0<JSONObject>> {
    public static no0<JSONObject> a(Object obj, ep0 ep0Var, aq0 aq0Var, ie1<yo0> ie1Var, ie1<ip0> ie1Var2, ie1<np0> ie1Var3, ie1<wp0> ie1Var4, ie1<bq0> ie1Var5, ie1<fq0> ie1Var6, ie1<vq0> ie1Var7, Executor executor) {
        HashSet hashSet = new HashSet();
        hashSet.add((sp0) obj);
        hashSet.add(ep0Var);
        hashSet.add(aq0Var);
        if (((Boolean) mu1.e().a(aw1.g3)).booleanValue()) {
            hashSet.add(ie1Var.get());
        }
        if (((Boolean) mu1.e().a(aw1.h3)).booleanValue()) {
            hashSet.add(ie1Var2.get());
        }
        if (((Boolean) mu1.e().a(aw1.i3)).booleanValue()) {
            hashSet.add(ie1Var3.get());
        }
        if (((Boolean) mu1.e().a(aw1.j3)).booleanValue()) {
            hashSet.add(ie1Var4.get());
        }
        if (((Boolean) mu1.e().a(aw1.l3)).booleanValue()) {
            hashSet.add(ie1Var5.get());
        }
        if (((Boolean) mu1.e().a(aw1.m3)).booleanValue()) {
            hashSet.add(ie1Var6.get());
        }
        if (((Boolean) mu1.e().a(aw1.n3)).booleanValue()) {
            hashSet.add(ie1Var7.get());
        }
        no0<JSONObject> no0Var = new no0<>(executor, hashSet);
        ue1.a(no0Var, "Cannot return null from a non-@Nullable @Provides method");
        return no0Var;
    }
}
