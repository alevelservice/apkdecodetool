package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class e extends MediationServerParameters {

    /* renamed from: a, reason: collision with root package name */
    @MediationServerParameters.Parameter(name = "label", required = true)
    public String f4229a;

    /* renamed from: b, reason: collision with root package name */
    @MediationServerParameters.Parameter(name = "class_name", required = true)
    public String f4230b;

    /* renamed from: c, reason: collision with root package name */
    @MediationServerParameters.Parameter(name = MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, required = false)
    public String f4231c = null;
}
