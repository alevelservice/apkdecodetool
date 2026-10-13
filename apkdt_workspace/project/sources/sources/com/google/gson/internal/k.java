package com.google.gson.internal;

import com.google.gson.JsonElement;
import com.google.gson.internal.bind.TypeAdapters;
import com.google.gson.n;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* compiled from: Streams.java */
/* loaded from: classes.dex */
public final class k {
    public static JsonElement a(com.google.gson.r.a aVar) {
        boolean z;
        try {
            try {
                aVar.C();
                z = false;
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            try {
                return TypeAdapters.X.read2(aVar);
            } catch (EOFException e3) {
                e = e3;
                if (z) {
                    return com.google.gson.j.f15470a;
                }
                throw new n(e);
            }
        } catch (com.google.gson.r.d e4) {
            throw new n(e4);
        } catch (IOException e5) {
            throw new com.google.gson.i(e5);
        } catch (NumberFormatException e6) {
            throw new n(e6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Streams.java */
    /* loaded from: classes.dex */
    public static final class a extends Writer {

        /* renamed from: e, reason: collision with root package name */
        private final Appendable f15458e;

        /* renamed from: f, reason: collision with root package name */
        private final C0146a f15459f = new C0146a();

        /* compiled from: Streams.java */
        /* renamed from: com.google.gson.internal.k$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        static class C0146a implements CharSequence {

            /* renamed from: e, reason: collision with root package name */
            char[] f15460e;

            C0146a() {
            }

            @Override // java.lang.CharSequence
            public char charAt(int i2) {
                return this.f15460e[i2];
            }

            @Override // java.lang.CharSequence
            public int length() {
                return this.f15460e.length;
            }

            @Override // java.lang.CharSequence
            public CharSequence subSequence(int i2, int i3) {
                return new String(this.f15460e, i2, i3 - i2);
            }
        }

        a(Appendable appendable) {
            this.f15458e = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i2, int i3) {
            C0146a c0146a = this.f15459f;
            c0146a.f15460e = cArr;
            this.f15458e.append(c0146a, i2, i3 + i2);
        }

        @Override // java.io.Writer
        public void write(int i2) {
            this.f15458e.append((char) i2);
        }
    }

    public static void a(JsonElement jsonElement, com.google.gson.r.c cVar) {
        TypeAdapters.X.write(cVar, jsonElement);
    }

    public static Writer a(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new a(appendable);
    }
}
