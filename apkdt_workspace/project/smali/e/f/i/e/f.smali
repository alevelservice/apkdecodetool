.class public Le/f/i/e/f;
.super Ljava/lang/Object;
.source "ProgressiveJpegParser.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private final h:Le/f/c/f/a;


# direct methods
.method public constructor <init>(Le/f/c/f/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Le/f/c/f/a;

    iput-object p1, p0, Le/f/i/e/f;->h:Le/f/c/f/a;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/f/i/e/f;->c:I

    .line 4
    iput p1, p0, Le/f/i/e/f;->b:I

    .line 5
    iput p1, p0, Le/f/i/e/f;->d:I

    .line 6
    iput p1, p0, Le/f/i/e/f;->f:I

    .line 7
    iput p1, p0, Le/f/i/e/f;->e:I

    .line 8
    iput p1, p0, Le/f/i/e/f;->a:I

    return-void
.end method

.method private static a(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xd0

    if-lt p0, v2, :cond_1

    const/16 v2, 0xd7

    if-gt p0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0xd9

    if-eq p0, v2, :cond_2

    const/16 v2, 0xd8

    if-eq p0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 9

    .line 13
    iget v0, p0, Le/f/i/e/f;->e:I

    .line 14
    :goto_0
    :try_start_0
    iget v1, p0, Le/f/i/e/f;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_f

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_f

    .line 15
    iget v5, p0, Le/f/i/e/f;->c:I

    add-int/2addr v5, v3

    iput v5, p0, Le/f/i/e/f;->c:I

    .line 16
    iget-boolean v5, p0, Le/f/i/e/f;->g:Z

    if-eqz v5, :cond_0

    .line 17
    iput v4, p0, Le/f/i/e/f;->a:I

    .line 18
    iput-boolean v2, p0, Le/f/i/e/f;->g:Z

    return v2

    .line 19
    :cond_0
    iget v5, p0, Le/f/i/e/f;->a:I

    const/16 v6, 0xff

    if-eqz v5, :cond_c

    const/4 v7, 0x2

    if-eq v5, v3, :cond_a

    const/4 v4, 0x3

    if-eq v5, v7, :cond_9

    const/4 v8, 0x4

    if-eq v5, v4, :cond_3

    const/4 v3, 0x5

    if-eq v5, v8, :cond_2

    if-eq v5, v3, :cond_1

    .line 20
    invoke-static {v2}, Lcom/facebook/common/internal/h;->b(Z)V

    goto :goto_1

    .line 21
    :cond_1
    iget v2, p0, Le/f/i/e/f;->b:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v1

    sub-int/2addr v2, v7

    int-to-long v3, v2

    .line 22
    invoke-static {p1, v3, v4}, Le/f/c/j/d;->a(Ljava/io/InputStream;J)J

    .line 23
    iget v3, p0, Le/f/i/e/f;->c:I

    add-int/2addr v3, v2

    iput v3, p0, Le/f/i/e/f;->c:I

    .line 24
    iput v7, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    .line 25
    :cond_2
    iput v3, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    .line 26
    iput v4, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 27
    iput v7, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_5
    const/16 v2, 0xd9

    if-ne v1, v2, :cond_6

    .line 28
    iput-boolean v3, p0, Le/f/i/e/f;->g:Z

    .line 29
    iget v2, p0, Le/f/i/e/f;->c:I

    sub-int/2addr v2, v7

    invoke-direct {p0, v2}, Le/f/i/e/f;->b(I)V

    .line 30
    iput v7, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_6
    const/16 v2, 0xda

    if-ne v1, v2, :cond_7

    .line 31
    iget v2, p0, Le/f/i/e/f;->c:I

    sub-int/2addr v2, v7

    invoke-direct {p0, v2}, Le/f/i/e/f;->b(I)V

    .line 32
    :cond_7
    invoke-static {v1}, Le/f/i/e/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 33
    iput v8, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    .line 34
    :cond_8
    iput v7, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_9
    if-ne v1, v6, :cond_e

    .line 35
    iput v4, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_a
    const/16 v2, 0xd8

    if-ne v1, v2, :cond_b

    .line 36
    iput v7, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    .line 37
    :cond_b
    iput v4, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    :cond_c
    if-ne v1, v6, :cond_d

    .line 38
    iput v3, p0, Le/f/i/e/f;->a:I

    goto :goto_1

    .line 39
    :cond_d
    iput v4, p0, Le/f/i/e/f;->a:I

    .line 40
    :cond_e
    :goto_1
    iput v1, p0, Le/f/i/e/f;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 41
    :cond_f
    iget p1, p0, Le/f/i/e/f;->a:I

    if-eq p1, v4, :cond_10

    iget p1, p0, Le/f/i/e/f;->e:I

    if-eq p1, v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2

    :catch_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/facebook/common/internal/l;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private b(I)V
    .locals 1

    .line 1
    iget v0, p0, Le/f/i/e/f;->d:I

    if-lez v0, :cond_0

    .line 2
    iput p1, p0, Le/f/i/e/f;->f:I

    .line 3
    :cond_0
    iget p1, p0, Le/f/i/e/f;->d:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Le/f/i/e/f;->d:I

    iput p1, p0, Le/f/i/e/f;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 43
    iget v0, p0, Le/f/i/e/f;->f:I

    return v0
.end method

.method public a(Le/f/i/g/e;)Z
    .locals 3

    .line 1
    iget v0, p0, Le/f/i/e/f;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Le/f/i/g/e;->t()I

    move-result v0

    .line 3
    iget v2, p0, Le/f/i/e/f;->c:I

    if-gt v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    new-instance v0, Le/f/c/f/f;

    .line 5
    invoke-virtual {p1}, Le/f/i/g/e;->q()Ljava/io/InputStream;

    move-result-object p1

    iget-object v1, p0, Le/f/i/e/f;->h:Le/f/c/f/a;

    const/16 v2, 0x4000

    .line 6
    invoke-interface {v1, v2}, Le/f/c/f/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Le/f/i/e/f;->h:Le/f/c/f/a;

    invoke-direct {v0, p1, v1, v2}, Le/f/c/f/f;-><init>(Ljava/io/InputStream;[BLe/f/c/g/c;)V

    .line 7
    :try_start_0
    iget p1, p0, Le/f/i/e/f;->c:I

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Le/f/c/j/d;->a(Ljava/io/InputStream;J)J

    .line 8
    invoke-direct {p0, v0}, Le/f/i/e/f;->a(Ljava/io/InputStream;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {v0}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    invoke-static {p1}, Lcom/facebook/common/internal/l;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    throw p1

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/b;->a(Ljava/io/InputStream;)V

    .line 12
    throw p1
.end method

.method public b()I
    .locals 1

    .line 4
    iget v0, p0, Le/f/i/e/f;->e:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/f/i/e/f;->g:Z

    return v0
.end method
