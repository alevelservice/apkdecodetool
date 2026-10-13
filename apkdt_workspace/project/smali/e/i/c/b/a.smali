.class public final Le/i/c/b/a;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method static a(II)I
    .locals 0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    sub-int/2addr p0, p1

    xor-int/lit8 p0, p0, -0x1

    xor-int/lit8 p0, p0, -0x1

    ushr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static a(ILjava/math/RoundingMode;)I
    .locals 1

    const-string v0, "x"

    .line 1
    invoke-static {v0, p0}, Le/i/c/b/b;->a(Ljava/lang/String;I)I

    .line 2
    sget-object v0, Le/i/c/b/a$a;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    .line 5
    invoke-static {v0, p0}, Le/i/c/b/a;->a(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :pswitch_1
    add-int/lit8 p0, p0, -0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    .line 7
    :pswitch_2
    invoke-static {p0}, Le/i/c/b/a;->a(I)Z

    move-result p1

    invoke-static {p1}, Le/i/c/b/b;->a(Z)V

    .line 8
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr p0, v3

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    and-int p0, v2, v0

    return p0
.end method

.method public static b(II)I
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    .line 1
    invoke-static {v0, v1}, Le/i/c/c/a;->a(J)I

    move-result p0

    return p0
.end method
