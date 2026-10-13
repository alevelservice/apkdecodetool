package com.google.firebase.iid;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
/* loaded from: classes.dex */
final class q implements p {

    /* renamed from: a, reason: collision with root package name */
    private final String f15012a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15013b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(String str, String str2) {
        this.f15012a = str;
        this.f15013b = str2;
    }

    @Override // com.google.firebase.iid.p
    public String a() {
        return this.f15013b;
    }

    @Override // com.google.firebase.iid.p
    public String getId() {
        return this.f15012a;
    }
}
