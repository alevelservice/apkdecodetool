package com.google.firebase.crashlytics.internal.model;

import androidx.annotation.NonNull;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.Arrays;

/* compiled from: AutoValue_CrashlyticsReport_FilesPayload_File.java */
/* loaded from: classes.dex */
final class e extends CrashlyticsReport.c.b {

    /* renamed from: a, reason: collision with root package name */
    private final String f14793a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f14794b;

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.b
    @NonNull
    public byte[] a() {
        return this.f14794b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.b
    @NonNull
    public String b() {
        return this.f14793a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.c.b)) {
            return false;
        }
        CrashlyticsReport.c.b bVar = (CrashlyticsReport.c.b) obj;
        if (this.f14793a.equals(bVar.b())) {
            if (Arrays.equals(this.f14794b, bVar instanceof e ? ((e) bVar).f14794b : bVar.a())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f14793a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f14794b);
    }

    public String toString() {
        return "File{filename=" + this.f14793a + ", contents=" + Arrays.toString(this.f14794b) + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_CrashlyticsReport_FilesPayload_File.java */
    /* loaded from: classes.dex */
    public static final class b extends CrashlyticsReport.c.b.a {

        /* renamed from: a, reason: collision with root package name */
        private String f14795a;

        /* renamed from: b, reason: collision with root package name */
        private byte[] f14796b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.b.a
        public CrashlyticsReport.c.b.a a(String str) {
            if (str != null) {
                this.f14795a = str;
                return this;
            }
            throw new NullPointerException("Null filename");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.b.a
        public CrashlyticsReport.c.b.a a(byte[] bArr) {
            if (bArr != null) {
                this.f14796b = bArr;
                return this;
            }
            throw new NullPointerException("Null contents");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.c.b.a
        public CrashlyticsReport.c.b a() {
            String str = "";
            if (this.f14795a == null) {
                str = " filename";
            }
            if (this.f14796b == null) {
                str = str + " contents";
            }
            if (str.isEmpty()) {
                return new e(this.f14795a, this.f14796b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }
    }

    private e(String str, byte[] bArr) {
        this.f14793a = str;
        this.f14794b = bArr;
    }
}
