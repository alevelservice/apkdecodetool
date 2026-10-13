package com.google.android.gms.measurement.internal;

import android.content.Context;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

@VisibleForTesting
/* loaded from: classes.dex */
public final class j {
    public static w2<Long> A;
    public static w2<Boolean> A0;
    public static w2<Long> B;
    public static w2<Boolean> B0;
    public static w2<Long> C;
    public static w2<Boolean> C0;
    public static w2<Long> D;
    public static w2<Boolean> D0;
    public static w2<Long> E;
    public static w2<Boolean> E0;
    public static w2<Long> F;
    public static w2<Boolean> F0;
    public static w2<Long> G;
    public static w2<Integer> H;
    public static w2<Long> I;
    public static w2<Integer> J;
    public static w2<Integer> K;
    public static w2<Long> L;
    public static w2<Boolean> M;
    public static w2<String> N;
    public static w2<Long> O;
    public static w2<Integer> P;
    public static w2<Double> Q;
    public static w2<Integer> R;
    public static w2<Boolean> S;
    public static w2<Boolean> T;
    public static w2<Boolean> U;
    public static w2<Boolean> V;
    public static w2<Boolean> W;
    public static w2<Boolean> X;
    public static w2<Boolean> Y;
    public static w2<Boolean> Z;

    /* renamed from: a */
    static y8 f12992a;
    public static w2<Boolean> a0;

    /* renamed from: b */
    private static List<w2<?>> f12993b = Collections.synchronizedList(new ArrayList());
    public static w2<Boolean> b0;

    /* renamed from: c */
    private static volatile j4 f12994c;
    public static w2<Boolean> c0;

    /* renamed from: d */
    @VisibleForTesting
    private static Boolean f12995d;
    public static w2<Boolean> d0;

    /* renamed from: e */
    public static w2<Boolean> f12996e;
    public static w2<Boolean> e0;

    /* renamed from: f */
    public static w2<String> f12997f;
    public static w2<Boolean> f0;

    /* renamed from: g */
    public static w2<Long> f12998g;
    public static w2<Boolean> g0;

    /* renamed from: h */
    public static w2<Long> f12999h;
    public static w2<Boolean> h0;

    /* renamed from: i */
    public static w2<Long> f13000i;
    public static w2<Boolean> i0;

    /* renamed from: j */
    public static w2<String> f13001j;
    public static w2<Boolean> j0;

    /* renamed from: k */
    public static w2<String> f13002k;
    public static w2<Boolean> k0;

    /* renamed from: l */
    public static w2<Integer> f13003l;
    public static w2<Boolean> l0;
    public static w2<Integer> m;
    public static w2<Boolean> m0;
    public static w2<Integer> n;
    public static w2<Boolean> n0;
    public static w2<Integer> o;
    public static w2<Boolean> o0;
    public static w2<Integer> p;
    public static w2<Boolean> p0;
    public static w2<Integer> q;
    public static w2<Boolean> q0;
    public static w2<Integer> r;
    public static w2<Boolean> r0;
    public static w2<Integer> s;
    public static w2<Boolean> s0;
    public static w2<Integer> t;
    public static w2<Boolean> t0;
    public static w2<Integer> u;
    public static w2<Boolean> u0;
    public static w2<String> v;
    public static w2<Boolean> v0;
    public static w2<Long> w;
    public static w2<Boolean> w0;
    public static w2<Long> x;
    public static w2<Boolean> x0;
    public static w2<Long> y;
    public static w2<Boolean> y0;
    public static w2<Long> z;
    public static w2<Boolean> z0;

    static {
        Collections.synchronizedSet(new HashSet());
        new com.google.android.gms.internal.measurement.w1(com.google.android.gms.internal.measurement.q1.a("com.google.android.gms.measurement"));
        a("measurement.log_third_party_store_events_enabled", false, false, m.f13068a);
        a("measurement.log_installs_enabled", false, false, l.f13051a);
        a("measurement.log_upgrades_enabled", false, false, y.f13329a);
        a("measurement.log_androidId_enabled", false, false, i0.f12976a);
        f12996e = a("measurement.upload_dsid_enabled", false, false, v0.f13269a);
        f12997f = a("measurement.log_tag", "FA", "FA-SVC", f1.f12894a);
        f12998g = a("measurement.ad_id_cache_time", 10000L, 10000L, s1.f13207a);
        f12999h = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, c2.f12794a);
        f13000i = a("measurement.config.cache_time", 86400000L, 3600000L, p2.f13137a);
        f13001j = a("measurement.config.url_scheme", "https", "https", v2.f13271a);
        f13002k = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", o.f13108a);
        f13003l = a("measurement.upload.max_bundles", 100, 100, n.f13094a);
        Integer valueOf = Integer.valueOf(AntDetector.ACTION_ID_SAMPLE);
        m = a("measurement.upload.max_batch_size", valueOf, valueOf, q.f13156a);
        n = a("measurement.upload.max_bundle_size", valueOf, valueOf, p.f13134a);
        o = a("measurement.upload.max_events_per_bundle", 1000, 1000, s.f13205a);
        p = a("measurement.upload.max_events_per_day", 100000, 100000, r.f13178a);
        q = a("measurement.upload.max_error_events_per_day", 1000, 1000, u.f13244a);
        r = a("measurement.upload.max_public_events_per_day", 50000, 50000, t.f13226a);
        s = a("measurement.upload.max_conversions_per_day", 500, 500, w.f13290a);
        t = a("measurement.upload.max_realtime_events_per_day", 10, 10, v.f13268a);
        u = a("measurement.store.max_stored_events_per_app", 100000, 100000, x.f13313a);
        v = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", b0.f12777a);
        w = a("measurement.upload.backoff_period", 43200000L, 43200000L, a0.f12742a);
        x = a("measurement.upload.window_interval", 3600000L, 3600000L, d0.f12820a);
        y = a("measurement.upload.interval", 3600000L, 3600000L, c0.f12792a);
        z = a("measurement.upload.realtime_upload_interval", 10000L, 10000L, f0.f12893a);
        A = a("measurement.upload.debug_upload_interval", 1000L, 1000L, e0.f12851a);
        B = a("measurement.upload.minimum_delay", 500L, 500L, h0.f12959a);
        C = a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, g0.f12926a);
        D = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, j0.f13004a);
        E = a("measurement.upload.refresh_blacklisted_config_interval", 604800000L, 604800000L, l0.f13052a);
        F = a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, k0.f13030a);
        G = a("measurement.upload.retry_time", 1800000L, 1800000L, n0.f13095a);
        H = a("measurement.upload.retry_count", 6, 6, m0.f13069a);
        I = a("measurement.upload.max_queue_time", 2419200000L, 2419200000L, p0.f13135a);
        J = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, o0.f13109a);
        K = a("measurement.audience.filter_result_max_count", 200, 200, r0.f13179a);
        L = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, q0.f13157a);
        M = a("measurement.test.boolean_flag", false, false, t0.f13227a);
        N = a("measurement.test.string_flag", "---", "---", s0.f13206a);
        O = a("measurement.test.long_flag", -1L, -1L, u0.f13245a);
        P = a("measurement.test.int_flag", -2, -2, x0.f13314a);
        Double valueOf2 = Double.valueOf(-3.0d);
        Q = a("measurement.test.double_flag", valueOf2, valueOf2, w0.f13291a);
        R = a("measurement.experiment.max_ids", 50, 50, z0.f13358a);
        S = a("measurement.validation.internal_limits_internal_event_params", false, false, y0.f13330a);
        T = a("measurement.audience.dynamic_filters", true, true, c1.f12793a);
        U = a("measurement.reset_analytics.persist_time", false, false, b1.f12778a);
        V = a("measurement.validation.value_and_currency_params", true, true, e1.f12852a);
        W = a("measurement.sampling.time_zone_offset_enabled", false, false, d1.f12821a);
        X = a("measurement.referrer.enable_logging_install_referrer_cmp_from_apk", false, false, g1.f12927a);
        Y = a("measurement.fetch_config_with_admob_app_id", true, true, i1.f12977a);
        Z = a("measurement.client.sessions.session_id_enabled", false, false, h1.f12960a);
        a0 = a("measurement.service.sessions.session_number_enabled", false, false, k1.f13031a);
        b0 = a("measurement.client.sessions.immediate_start_enabled_foreground", false, false, j1.f13005a);
        c0 = a("measurement.client.sessions.background_sessions_enabled", false, false, m1.f13070a);
        d0 = a("measurement.client.sessions.remove_expired_session_properties_enabled", false, false, l1.f13053a);
        e0 = a("measurement.service.sessions.session_number_backfill_enabled", false, false, o1.f13110a);
        f0 = a("measurement.service.sessions.remove_disabled_session_number", false, false, n1.f13096a);
        g0 = a("measurement.collection.firebase_global_collection_flag_enabled", true, true, q1.f13158a);
        h0 = a("measurement.collection.efficient_engagement_reporting_enabled", false, false, p1.f13136a);
        i0 = a("measurement.collection.redundant_engagement_removal_enabled", false, false, r1.f13180a);
        j0 = a("measurement.personalized_ads_signals_collection_enabled", true, true, u1.f13246a);
        k0 = a("measurement.personalized_ads_property_translation_enabled", true, true, t1.f13228a);
        l0 = a("measurement.collection.init_params_control_enabled", true, true, w1.f13292a);
        m0 = a("measurement.upload.disable_is_uploader", true, true, v1.f13270a);
        n0 = a("measurement.experiment.enable_experiment_reporting", true, true, y1.f13331a);
        o0 = a("measurement.collection.log_event_and_bundle_v2", true, true, x1.f13315a);
        p0 = a("measurement.collection.null_empty_event_name_fix", true, true, a2.f12746a);
        q0 = a("measurement.audience.sequence_filters", false, false, z1.f13359a);
        a("measurement.audience.sequence_filters_bundle_timestamp", false, false, d2.f12822a);
        r0 = a("measurement.quality.checksum", false, false, null);
        s0 = a("measurement.module.collection.conditionally_omit_admob_app_id", true, true, f2.f12895a);
        t0 = a("measurement.sdk.dynamite.use_dynamite2", false, false, e2.f12853a);
        u0 = a("measurement.sdk.dynamite.allow_remote_dynamite", false, false, h2.f12961a);
        v0 = a("measurement.sdk.collection.validate_param_names_alphabetical", false, false, g2.f12928a);
        w0 = a("measurement.collection.event_safelist", false, false, j2.f13006a);
        x0 = a("measurement.service.audience.scoped_filters_v27", false, false, i2.f12978a);
        y0 = a("measurement.service.audience.session_scoped_event_aggregates", false, false, l2.f13054a);
        z0 = a("measurement.service.audience.session_scoped_user_engagement", false, false, k2.f13032a);
        A0 = a("measurement.service.audience.remove_disabled_session_scoped_user_engagement", false, false, n2.f13097a);
        B0 = a("measurement.sdk.collection.retrieve_deeplink_from_bow", false, false, m2.f13071a);
        C0 = a("measurement.app_launch.event_ordering_fix", false, false, o2.f13111a);
        D0 = a("measurement.sdk.collection.last_deep_link_referrer", false, false, r2.f13181a);
        a("measurement.sdk.collection.last_deep_link_referrer_campaign", false, false, q2.f13159a);
        E0 = a("measurement.sdk.collection.last_gclid_from_referrer", false, false, t2.f13229a);
        F0 = a("measurement.upload.file_lock_state_check", false, false, s2.f13208a);
    }

    public static final /* synthetic */ String C0() {
        return a() ? com.google.android.gms.internal.measurement.q8.r() : com.google.android.gms.internal.measurement.q8.c();
    }

    public static Map<String, String> a(Context context) {
        com.google.android.gms.internal.measurement.d1 a2 = com.google.android.gms.internal.measurement.d1.a(context.getContentResolver(), com.google.android.gms.internal.measurement.q1.a("com.google.android.gms.measurement"));
        return a2 == null ? Collections.emptyMap() : a2.a();
    }

    public static final /* synthetic */ Long z0() {
        long b2;
        if (a()) {
            b2 = com.google.android.gms.internal.measurement.q8.p();
        } else {
            b2 = com.google.android.gms.internal.measurement.q8.b();
        }
        return Long.valueOf(b2);
    }

    public static void a(j4 j4Var) {
        f12994c = j4Var;
    }

    @VisibleForTesting
    public static void a(Exception exc) {
        if (f12994c == null) {
            return;
        }
        Context context = f12994c.getContext();
        if (f12995d == null) {
            f12995d = Boolean.valueOf(com.google.android.gms.common.d.a().a(context, com.google.android.gms.common.h.f5182a) == 0);
        }
        if (f12995d.booleanValue()) {
            f12994c.zzab().q().a("Got Exception on PhenotypeFlag.get on Play device", exc);
        }
    }

    @VisibleForTesting
    private static <V> w2<V> a(@Nullable String str, @Nullable V v2, @Nullable V v3, @Nullable x2<V> x2Var) {
        w2<V> w2Var = new w2<>(str, v2, v3, x2Var);
        f12993b.add(w2Var);
        return w2Var;
    }

    public static void a(y8 y8Var) {
        f12992a = y8Var;
    }

    private static boolean a() {
        if (f12992a != null) {
        }
        return false;
    }
}
