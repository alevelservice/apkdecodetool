package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes.dex */
public class l4 extends IOException {
    private k5 zzaiw;

    public l4(String str) {
        super(str);
        this.zzaiw = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzut() {
        return new l4("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzuu() {
        return new l4("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzuv() {
        return new l4("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzuw() {
        return new l4("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzux() {
        return new l4("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k4 zzuy() {
        return new k4("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzuz() {
        return new l4("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzva() {
        return new l4("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l4 zzvb() {
        return new l4("Protocol message had invalid UTF-8.");
    }

    public final l4 zzg(k5 k5Var) {
        this.zzaiw = k5Var;
        return this;
    }
}
