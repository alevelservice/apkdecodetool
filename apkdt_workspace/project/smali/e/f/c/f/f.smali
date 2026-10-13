.class public Le/f/c/f/f;
.super Ljava/io/InputStream;
.source "PooledByteArrayBufferedInputStream.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private final e:Ljava/io/InputStream;

.field private final f:[B

.field private final g:Le/f/c/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/c/g/c<",
            "[B>;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BLe/f/c/g/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "[B",
            "Le/f/c/g/c<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Le/f/c/f/f;->e:Ljava/io/InputStream;

    .line 3
    invoke-static {p2}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, [B

    iput-object p2, p0, Le/f/c/f/f;->f:[B

    .line 4
    invoke-static {p3}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Le/f/c/g/c;

    iput-object p3, p0, Le/f/c/f/f;->g:Le/f/c/g/c;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Le/f/c/f/f;->h:I

    .line 6
    iput p1, p0, Le/f/c/f/f;->i:I

    .line 7
    iput-boolean p1, p0, Le/f/c/f/f;->j:Z

    return-void
.end method

.method private i()Z
    .locals 3

    .line 1
    iget v0, p0, Le/f/c/f/f;->i:I

    iget v1, p0, Le/f/c/f/f;->h:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Le/f/c/f/f;->e:Ljava/io/InputStream;

    iget-object v1, p0, Le/f/c/f/f;->f:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iput v0, p0, Le/f/c/f/f;->h:I

    .line 4
    iput v1, p0, Le/f/c/f/f;->i:I

    return v2
.end method

.method private j()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/c/f/f;->j:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 1
    iget v0, p0, Le/f/c/f/f;->i:I

    iget v1, p0, Le/f/c/f/f;->h:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 2
    invoke-direct {p0}, Le/f/c/f/f;->j()V

    .line 3
    iget v0, p0, Le/f/c/f/f;->h:I

    iget v1, p0, Le/f/c/f/f;->i:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Le/f/c/f/f;->e:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/c/f/f;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/f/c/f/f;->j:Z

    .line 3
    iget-object v0, p0, Le/f/c/f/f;->g:Le/f/c/g/c;

    iget-object v1, p0, Le/f/c/f/f;->f:[B

    invoke-interface {v0, v1}, Le/f/c/g/c;->a(Ljava/lang/Object;)V

    .line 4
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/f/c/f/f;->j:Z

    if-nez v0, :cond_0

    const-string v0, "PooledByteInputStream"

    const-string v1, "Finalized without closing"

    .line 2
    invoke-static {v0, v1}, Le/f/c/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/f/c/f/f;->close()V

    .line 4
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    iget v0, p0, Le/f/c/f/f;->i:I

    iget v1, p0, Le/f/c/f/f;->h:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 2
    invoke-direct {p0}, Le/f/c/f/f;->j()V

    .line 3
    invoke-direct {p0}, Le/f/c/f/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/f/c/f/f;->f:[B

    iget v1, p0, Le/f/c/f/f;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Le/f/c/f/f;->i:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 5
    iget v0, p0, Le/f/c/f/f;->i:I

    iget v1, p0, Le/f/c/f/f;->h:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 6
    invoke-direct {p0}, Le/f/c/f/f;->j()V

    .line 7
    invoke-direct {p0}, Le/f/c/f/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 8
    :cond_1
    iget v0, p0, Le/f/c/f/f;->h:I

    iget v1, p0, Le/f/c/f/f;->i:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 9
    iget-object v0, p0, Le/f/c/f/f;->f:[B

    iget v1, p0, Le/f/c/f/f;->i:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Le/f/c/f/f;->i:I

    add-int/2addr p1, p3

    iput p1, p0, Le/f/c/f/f;->i:I

    return p3
.end method

.method public skip(J)J
    .locals 5

    .line 1
    iget v0, p0, Le/f/c/f/f;->i:I

    iget v1, p0, Le/f/c/f/f;->h:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/h;->b(Z)V

    .line 2
    invoke-direct {p0}, Le/f/c/f/f;->j()V

    .line 3
    iget v0, p0, Le/f/c/f/f;->h:I

    iget v1, p0, Le/f/c/f/f;->i:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v4, v2, p1

    if-ltz v4, :cond_1

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v1, v0

    .line 4
    iput v1, p0, Le/f/c/f/f;->i:I

    return-wide p1

    .line 5
    :cond_1
    iput v0, p0, Le/f/c/f/f;->i:I

    .line 6
    iget-object v0, p0, Le/f/c/f/f;->e:Ljava/io/InputStream;

    sub-long/2addr p1, v2

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    return-wide v2
.end method
