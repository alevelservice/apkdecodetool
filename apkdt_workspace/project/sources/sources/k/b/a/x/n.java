package k.b.a.x;

import java.io.Serializable;

/* compiled from: ValueRange.java */
/* loaded from: classes2.dex */
public final class n implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;
    private final long maxLargest;
    private final long maxSmallest;
    private final long minLargest;
    private final long minSmallest;

    private n(long j2, long j3, long j4, long j5) {
        this.minSmallest = j2;
        this.minLargest = j3;
        this.maxSmallest = j4;
        this.maxLargest = j5;
    }

    public static n of(long j2, long j3) {
        if (j2 <= j3) {
            return new n(j2, j2, j3, j3);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public int checkValidIntValue(long j2, i iVar) {
        if (isValidIntValue(j2)) {
            return (int) j2;
        }
        throw new k.b.a.b("Invalid int value for " + iVar + ": " + j2);
    }

    public long checkValidValue(long j2, i iVar) {
        if (isValidValue(j2)) {
            return j2;
        }
        if (iVar != null) {
            throw new k.b.a.b("Invalid value for " + iVar + " (valid values " + this + "): " + j2);
        }
        throw new k.b.a.b("Invalid value (valid values " + this + "): " + j2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.minSmallest == nVar.minSmallest && this.minLargest == nVar.minLargest && this.maxSmallest == nVar.maxSmallest && this.maxLargest == nVar.maxLargest;
    }

    public long getLargestMinimum() {
        return this.minLargest;
    }

    public long getMaximum() {
        return this.maxLargest;
    }

    public long getMinimum() {
        return this.minSmallest;
    }

    public long getSmallestMaximum() {
        return this.maxSmallest;
    }

    public int hashCode() {
        long j2 = this.minSmallest;
        long j3 = this.minLargest;
        long j4 = (j2 + j3) << ((int) (j3 + 16));
        long j5 = this.maxSmallest;
        long j6 = (j4 >> ((int) (j5 + 48))) << ((int) (j5 + 32));
        long j7 = this.maxLargest;
        long j8 = ((j6 >> ((int) (32 + j7))) << ((int) (j7 + 48))) >> 16;
        return (int) (j8 ^ (j8 >>> 32));
    }

    public boolean isFixed() {
        return this.minSmallest == this.minLargest && this.maxSmallest == this.maxLargest;
    }

    public boolean isIntValue() {
        return getMinimum() >= -2147483648L && getMaximum() <= 2147483647L;
    }

    public boolean isValidIntValue(long j2) {
        return isIntValue() && isValidValue(j2);
    }

    public boolean isValidValue(long j2) {
        return j2 >= getMinimum() && j2 <= getMaximum();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.minSmallest);
        if (this.minSmallest != this.minLargest) {
            sb.append('/');
            sb.append(this.minLargest);
        }
        sb.append(" - ");
        sb.append(this.maxSmallest);
        if (this.maxSmallest != this.maxLargest) {
            sb.append('/');
            sb.append(this.maxLargest);
        }
        return sb.toString();
    }

    public static n of(long j2, long j3, long j4) {
        return of(j2, j2, j3, j4);
    }

    public static n of(long j2, long j3, long j4, long j5) {
        if (j2 > j3) {
            throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
        }
        if (j4 > j5) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (j3 <= j5) {
            return new n(j2, j3, j4, j5);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }
}
