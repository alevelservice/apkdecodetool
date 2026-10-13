package e.i.b.b.b.b;

/* compiled from: com.google.firebase:firebase-messaging@@21.0.1 */
/* loaded from: classes.dex */
final class l extends i {

    /* renamed from: a, reason: collision with root package name */
    private final k f17823a = new k();

    @Override // e.i.b.b.b.b.i
    public final void a(Throwable th, Throwable th2) {
        if (th2 != th) {
            this.f17823a.a(th, true).add(th2);
            return;
        }
        throw new IllegalArgumentException("Self suppression is not allowed.", th2);
    }
}
