package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.b0;
import com.google.android.gms.internal.measurement.d0;

/* loaded from: classes.dex */
final /* synthetic */ class w8 {

    /* renamed from: a, reason: collision with root package name */
    static final /* synthetic */ int[] f13311a;

    /* renamed from: b, reason: collision with root package name */
    static final /* synthetic */ int[] f13312b = new int[b0.b.values().length];

    static {
        try {
            f13312b[b0.b.LESS_THAN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f13312b[b0.b.GREATER_THAN.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f13312b[b0.b.EQUAL.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f13312b[b0.b.BETWEEN.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f13311a = new int[d0.a.values().length];
        try {
            f13311a[d0.a.REGEXP.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f13311a[d0.a.BEGINS_WITH.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            f13311a[d0.a.ENDS_WITH.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f13311a[d0.a.PARTIAL.ordinal()] = 4;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f13311a[d0.a.EXACT.ordinal()] = 5;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f13311a[d0.a.IN_LIST.ordinal()] = 6;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
