package kotlin;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* compiled from: KotlinVersion.kt */
@SinceKotlin(version = "1.1")
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0017B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u000e\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0003H\u0016J\u0016\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003J\u001e\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003J\b\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u000e\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lkotlin/KotlinVersion;", "", "major", "", "minor", "(II)V", "patch", "(III)V", "getMajor", "()I", "getMinor", "getPatch", "version", "compareTo", "other", "equals", "", "", "hashCode", "isAtLeast", "toString", "", "versionOf", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15})
/* renamed from: kotlin.g, reason: from Kotlin metadata */
/* loaded from: classes2.dex */
public final class KotlinVersion implements Comparable<KotlinVersion> {

    /* renamed from: i, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final KotlinVersion f19932i;

    /* renamed from: e, reason: collision with root package name */
    private final int f19933e;

    /* renamed from: f, reason: collision with root package name */
    private final int f19934f;

    /* renamed from: g, reason: collision with root package name */
    private final int f19935g;

    /* renamed from: h, reason: collision with root package name */
    private final int f19936h;

    /* compiled from: KotlinVersion.kt */
    /* renamed from: kotlin.g$a */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.d.e eVar) {
            this();
        }
    }

    static {
        new a(null);
        f19932i = new KotlinVersion(1, 3, 50);
    }

    public KotlinVersion(int i2, int i3, int i4) {
        this.f19934f = i2;
        this.f19935g = i3;
        this.f19936h = i4;
        this.f19933e = a(this.f19934f, this.f19935g, this.f19936h);
    }

    private final int a(int i2, int i3, int i4) {
        if (i2 >= 0 && 255 >= i2 && i3 >= 0 && 255 >= i3 && i4 >= 0 && 255 >= i4) {
            return (i2 << 16) + (i3 << 8) + i4;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i2 + '.' + i3 + '.' + i4).toString());
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof KotlinVersion)) {
            other = null;
        }
        KotlinVersion kotlinVersion = (KotlinVersion) other;
        return kotlinVersion != null && this.f19933e == kotlinVersion.f19933e;
    }

    /* renamed from: hashCode, reason: from getter */
    public int getF19933e() {
        return this.f19933e;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f19934f);
        sb.append('.');
        sb.append(this.f19935g);
        sb.append('.');
        sb.append(this.f19936h);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NotNull KotlinVersion kotlinVersion) {
        kotlin.jvm.d.h.b(kotlinVersion, "other");
        return this.f19933e - kotlinVersion.f19933e;
    }
}
