package io.flutter.embedding.android;

import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.embedding.engine.i.c;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Map;

/* compiled from: AndroidKeyProcessor.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: e, reason: collision with root package name */
    private static long f18965e;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    private final io.flutter.embedding.engine.i.c f18966a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    private final io.flutter.plugin.editing.c f18967b;

    /* renamed from: c, reason: collision with root package name */
    private int f18968c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    private C0226a f18969d;

    /* compiled from: AndroidKeyProcessor.java */
    /* renamed from: io.flutter.embedding.android.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static class C0226a implements c.a {

        /* renamed from: b, reason: collision with root package name */
        @NonNull
        private final View f18971b;

        /* renamed from: a, reason: collision with root package name */
        final Deque<Map.Entry<Long, KeyEvent>> f18970a = new ArrayDeque();

        /* renamed from: c, reason: collision with root package name */
        boolean f18972c = false;

        public C0226a(@NonNull View view) {
            this.f18971b = view;
        }

        private KeyEvent c(long j2) {
            if (this.f18970a.getFirst().getKey().longValue() == j2) {
                return this.f18970a.removeFirst().getValue();
            }
            throw new AssertionError("Event response received out of order. Should have seen event " + this.f18970a.getFirst().getKey() + " first. Instead, received " + j2);
        }

        @Override // io.flutter.embedding.engine.i.c.a
        public void a(long j2) {
            a(c(j2));
        }

        @Override // io.flutter.embedding.engine.i.c.a
        public void b(long j2) {
            c(j2);
        }

        public void a(long j2, @NonNull KeyEvent keyEvent) {
            if (this.f18970a.size() > 0 && this.f18970a.getFirst().getKey().longValue() >= j2) {
                throw new AssertionError("New events must have ids greater than the most recent pending event. New id " + j2 + " is less than or equal to the last event id of " + this.f18970a.getFirst().getKey());
            }
            this.f18970a.addLast(new AbstractMap.SimpleImmutableEntry(Long.valueOf(j2), keyEvent));
            if (this.f18970a.size() > 1000) {
                String str = "There are " + this.f18970a.size() + " keyboard events that have not yet received a response. Are responses being sent?";
            }
        }

        public void a(KeyEvent keyEvent) {
            View view = this.f18971b;
            if (view != null) {
                this.f18972c = true;
                view.getRootView().dispatchKeyEvent(keyEvent);
                this.f18972c = false;
            }
        }
    }

    public a(@NonNull View view, @NonNull io.flutter.embedding.engine.i.c cVar, @NonNull io.flutter.plugin.editing.c cVar2) {
        this.f18966a = cVar;
        this.f18967b = cVar2;
        this.f18969d = new C0226a(view);
        this.f18966a.a(this.f18969d);
    }

    public void a() {
        this.f18966a.a((c.a) null);
    }

    public boolean b(@NonNull KeyEvent keyEvent) {
        if (this.f18969d.f18972c) {
            return false;
        }
        Character a2 = a(keyEvent.getUnicodeChar());
        long j2 = f18965e;
        f18965e = 1 + j2;
        c.b bVar = new c.b(keyEvent, a2, j2);
        this.f18966a.b(bVar);
        this.f18969d.a(bVar.m, keyEvent);
        return true;
    }

    public boolean a(@NonNull KeyEvent keyEvent) {
        if (this.f18969d.f18972c) {
            return false;
        }
        if (this.f18967b.c() != null && this.f18967b.b().isAcceptingText() && this.f18967b.c().sendKeyEvent(keyEvent)) {
            return true;
        }
        Character a2 = a(keyEvent.getUnicodeChar());
        long j2 = f18965e;
        f18965e = 1 + j2;
        c.b bVar = new c.b(keyEvent, a2, j2);
        this.f18966a.a(bVar);
        this.f18969d.a(bVar.m, keyEvent);
        return true;
    }

    @Nullable
    private Character a(int i2) {
        if (i2 == 0) {
            return null;
        }
        char c2 = (char) i2;
        if ((Integer.MIN_VALUE & i2) != 0) {
            int i3 = i2 & Integer.MAX_VALUE;
            int i4 = this.f18968c;
            if (i4 != 0) {
                this.f18968c = KeyCharacterMap.getDeadChar(i4, i3);
            } else {
                this.f18968c = i3;
            }
        } else {
            int i5 = this.f18968c;
            if (i5 != 0) {
                int deadChar = KeyCharacterMap.getDeadChar(i5, i2);
                if (deadChar > 0) {
                    c2 = (char) deadChar;
                }
                this.f18968c = 0;
            }
        }
        return Character.valueOf(c2);
    }
}
