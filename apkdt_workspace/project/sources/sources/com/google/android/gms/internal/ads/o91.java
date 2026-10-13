package com.google.android.gms.internal.ads;

import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public class o91 extends IOException {
    private oa1 zzhla;

    public o91(String str) {
        super(str);
        this.zzhla = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzazx() {
        return new o91("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzazy() {
        return new o91("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzazz() {
        return new o91("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzbaa() {
        return new o91("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzbab() {
        return new o91("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n91 zzbac() {
        return new n91("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzbad() {
        return new o91("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o91 zzbae() {
        return new o91("Protocol message had invalid UTF-8.");
    }

    public final o91 zzo(oa1 oa1Var) {
        this.zzhla = oa1Var;
        return this;
    }
}
