.class public final Lcom/google/firebase/crashlytics/d/l/c;
.super Ljava/lang/Object;
.source "CodedOutputStream.java"

# interfaces
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/d/l/c$a;
    }
.end annotation


# instance fields
.field private final e:[B

.field private final f:I

.field private g:I

.field private final h:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->h:Ljava/io/OutputStream;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    .line 5
    array-length p1, p2

    iput p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/firebase/crashlytics/d/l/c;
    .locals 1

    const/16 v0, 0x1000

    .line 1
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(Ljava/io/OutputStream;I)Lcom/google/firebase/crashlytics/d/l/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/google/firebase/crashlytics/d/l/c;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/firebase/crashlytics/d/l/c;

    new-array p1, p1, [B

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static b(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static b(IF)I
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IJ)I
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->f(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILcom/google/firebase/crashlytics/d/l/a;)I
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->c(Lcom/google/firebase/crashlytics/d/l/a;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static c(Lcom/google/firebase/crashlytics/d/l/a;)I
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/l/a;->b()I

    move-result v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/d/l/a;->b()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private c()V
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    iget v2, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iput v3, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/google/firebase/crashlytics/d/l/c$a;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/d/l/c$a;-><init>()V

    throw v0
.end method

.method public static e(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->i(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(J)I
    .locals 5

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static f(II)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->l(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(J)I
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->e(J)I

    move-result p0

    return p0
.end method

.method public static g(II)I
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->m(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->n(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static i(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->j(I)I

    move-result p0

    return p0
.end method

.method public static j(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static k(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static l(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->o(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p0

    return p0
.end method

.method public static m(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/d/l/e;->a(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p0

    return p0
.end method

.method public static n(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/d/l/c;->k(I)I

    move-result p0

    return p0
.end method

.method public static o(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public a(B)V
    .locals 3

    .line 17
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    iget v1, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    if-ne v0, v1, :cond_0

    .line 18
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/l/c;->c()V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    iget v1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 13
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->e(I)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(F)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->b(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/crashlytics/d/l/c;->d(J)V

    return-void
.end method

.method public a(ILcom/google/firebase/crashlytics/d/l/a;)V
    .locals 1

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(Lcom/google/firebase/crashlytics/d/l/a;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->a(Z)V

    return-void
.end method

.method public a(Lcom/google/firebase/crashlytics/d/l/a;)V
    .locals 1

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/l/a;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->b(Lcom/google/firebase/crashlytics/d/l/a;)V

    return-void
.end method

.method public a(Lcom/google/firebase/crashlytics/d/l/a;II)V
    .locals 6

    .line 31
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    iget v1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/firebase/crashlytics/d/l/a;->a([BIII)V

    .line 33
    iget p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    goto :goto_1

    :cond_0
    sub-int/2addr v0, v1

    .line 34
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-virtual {p1, v2, p2, v1, v0}, Lcom/google/firebase/crashlytics/d/l/a;->a([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 35
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    iput v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    .line 36
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/l/c;->c()V

    .line 37
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    const/4 v1, 0x0

    if-gt p3, v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/firebase/crashlytics/d/l/a;->a([BIII)V

    .line 39
    iput p3, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/l/a;->a()Ljava/io/InputStream;

    move-result-object p1

    int-to-long v2, p2

    .line 41
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    :goto_0
    if-lez p3, :cond_3

    .line 42
    iget p2, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 43
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, p2, :cond_2

    .line 44
    iget-object p2, p0, Lcom/google/firebase/crashlytics/d/l/c;->h:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-virtual {p2, v2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p3, v0

    goto :goto_0

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void

    .line 46
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Skip failed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Z)V
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    return-void
.end method

.method public a([B)V
    .locals 2

    .line 20
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a([BII)V

    return-void
.end method

.method public a([BII)V
    .locals 3

    .line 21
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    iget v1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    sub-int v2, v0, v1

    if-lt v2, p3, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    iget p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    .line 24
    iget-object v2, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 25
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    iput v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/l/c;->c()V

    .line 27
    iget v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->f:I

    if-gt p3, v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->e:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput p3, p0, Lcom/google/firebase/crashlytics/d/l/c;->g:I

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->c(I)V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->g(I)V

    return-void
.end method

.method public b(Lcom/google/firebase/crashlytics/d/l/a;)V
    .locals 2

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/d/l/a;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->a(Lcom/google/firebase/crashlytics/d/l/a;II)V

    return-void
.end method

.method public c(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/d/l/c;->c(J)V

    :goto_0
    return-void
.end method

.method public c(II)V
    .locals 0

    .line 8
    invoke-static {p1, p2}, Lcom/google/firebase/crashlytics/d/l/e;->a(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    return-void
.end method

.method public c(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    long-to-int p2, p1

    .line 9
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 0

    int-to-byte p1, p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->a(B)V

    return-void
.end method

.method public d(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/d/l/c;->c(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/d/l/c;->h(I)V

    return-void
.end method

.method public d(J)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/d/l/c;->c(J)V

    return-void
.end method

.method public e(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    return-void
.end method

.method public f(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/d/l/c;->d(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/l/c;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/d/l/c;->c()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/d/l/c;->o(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/d/l/c;->f(I)V

    return-void
.end method
