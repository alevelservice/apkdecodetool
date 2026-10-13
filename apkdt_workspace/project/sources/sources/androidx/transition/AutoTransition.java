package androidx.transition;

/* loaded from: classes.dex */
public class AutoTransition extends TransitionSet {
    public AutoTransition() {
        D();
    }

    private void D() {
        b(1);
        a(new Fade(2));
        a(new ChangeBounds());
        a(new Fade(1));
    }
}
