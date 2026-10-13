.class public La/g/a/e;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/g/a/e$a;
    }
.end annotation


# static fields
.field private static p:I = 0x3e8

.field public static q:La/g/a/f;


# instance fields
.field a:I

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "La/g/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:La/g/a/e$a;

.field private d:I

.field private e:I

.field f:[La/g/a/b;

.field public g:Z

.field private h:[Z

.field i:I

.field j:I

.field private k:I

.field final l:La/g/a/c;

.field private m:[La/g/a/i;

.field private n:I

.field private final o:La/g/a/e$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/g/a/e;->a:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, La/g/a/e;->b:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 4
    iput v2, p0, La/g/a/e;->d:I

    .line 5
    iget v2, p0, La/g/a/e;->d:I

    iput v2, p0, La/g/a/e;->e:I

    .line 6
    iput-object v1, p0, La/g/a/e;->f:[La/g/a/b;

    .line 7
    iput-boolean v0, p0, La/g/a/e;->g:Z

    .line 8
    new-array v1, v2, [Z

    iput-object v1, p0, La/g/a/e;->h:[Z

    const/4 v1, 0x1

    .line 9
    iput v1, p0, La/g/a/e;->i:I

    .line 10
    iput v0, p0, La/g/a/e;->j:I

    .line 11
    iput v2, p0, La/g/a/e;->k:I

    .line 12
    sget v1, La/g/a/e;->p:I

    new-array v1, v1, [La/g/a/i;

    iput-object v1, p0, La/g/a/e;->m:[La/g/a/i;

    .line 13
    iput v0, p0, La/g/a/e;->n:I

    .line 14
    new-array v0, v2, [La/g/a/b;

    .line 15
    new-array v0, v2, [La/g/a/b;

    iput-object v0, p0, La/g/a/e;->f:[La/g/a/b;

    .line 16
    invoke-direct {p0}, La/g/a/e;->j()V

    .line 17
    new-instance v0, La/g/a/c;

    invoke-direct {v0}, La/g/a/c;-><init>()V

    iput-object v0, p0, La/g/a/e;->l:La/g/a/c;

    .line 18
    new-instance v0, La/g/a/d;

    iget-object v1, p0, La/g/a/e;->l:La/g/a/c;

    invoke-direct {v0, v1}, La/g/a/d;-><init>(La/g/a/c;)V

    iput-object v0, p0, La/g/a/e;->c:La/g/a/e$a;

    .line 19
    new-instance v0, La/g/a/b;

    iget-object v1, p0, La/g/a/e;->l:La/g/a/c;

    invoke-direct {v0, v1}, La/g/a/b;-><init>(La/g/a/c;)V

    iput-object v0, p0, La/g/a/e;->o:La/g/a/e$a;

    return-void
.end method

.method private final a(La/g/a/e$a;Z)I
    .locals 13

    .line 82
    sget-object p2, La/g/a/e;->q:La/g/a/f;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    .line 83
    iget-wide v2, p2, La/g/a/f;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, La/g/a/f;->h:J

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    .line 84
    :goto_0
    iget v3, p0, La/g/a/e;->i:I

    if-ge v2, v3, :cond_1

    .line 85
    iget-object v3, p0, La/g/a/e;->h:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v2, :cond_d

    .line 86
    sget-object v4, La/g/a/e;->q:La/g/a/f;

    if-eqz v4, :cond_2

    .line 87
    iget-wide v5, v4, La/g/a/f;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, La/g/a/f;->i:J

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 88
    iget v4, p0, La/g/a/e;->i:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_3

    return v3

    .line 89
    :cond_3
    invoke-interface {p1}, La/g/a/e$a;->getKey()La/g/a/i;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 90
    iget-object v4, p0, La/g/a/e;->h:[Z

    invoke-interface {p1}, La/g/a/e$a;->getKey()La/g/a/i;

    move-result-object v6

    iget v6, v6, La/g/a/i;->b:I

    aput-boolean v5, v4, v6

    .line 91
    :cond_4
    iget-object v4, p0, La/g/a/e;->h:[Z

    invoke-interface {p1, p0, v4}, La/g/a/e$a;->a(La/g/a/e;[Z)La/g/a/i;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 92
    iget-object v6, p0, La/g/a/e;->h:[Z

    iget v7, v4, La/g/a/i;->b:I

    aget-boolean v8, v6, v7

    if-eqz v8, :cond_5

    return v3

    .line 93
    :cond_5
    aput-boolean v5, v6, v7

    :cond_6
    if-eqz v4, :cond_c

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    .line 94
    :goto_2
    iget v10, p0, La/g/a/e;->j:I

    if-ge v6, v10, :cond_a

    .line 95
    iget-object v10, p0, La/g/a/e;->f:[La/g/a/b;

    aget-object v10, v10, v6

    .line 96
    iget-object v11, v10, La/g/a/b;->a:La/g/a/i;

    .line 97
    iget-object v11, v11, La/g/a/i;->g:La/g/a/i$a;

    sget-object v12, La/g/a/i$a;->UNRESTRICTED:La/g/a/i$a;

    if-ne v11, v12, :cond_7

    goto :goto_3

    .line 98
    :cond_7
    iget-boolean v11, v10, La/g/a/b;->e:Z

    if-eqz v11, :cond_8

    goto :goto_3

    .line 99
    :cond_8
    invoke-virtual {v10, v4}, La/g/a/b;->b(La/g/a/i;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 100
    iget-object v11, v10, La/g/a/b;->d:La/g/a/a;

    invoke-virtual {v11, v4}, La/g/a/a;->b(La/g/a/i;)F

    move-result v11

    const/4 v12, 0x0

    cmpg-float v12, v11, v12

    if-gez v12, :cond_9

    .line 101
    iget v10, v10, La/g/a/b;->b:F

    neg-float v10, v10

    div-float/2addr v10, v11

    cmpg-float v11, v10, v9

    if-gez v11, :cond_9

    move v8, v6

    move v9, v10

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_a
    if-le v8, v7, :cond_c

    .line 102
    iget-object v5, p0, La/g/a/e;->f:[La/g/a/b;

    aget-object v5, v5, v8

    .line 103
    iget-object v6, v5, La/g/a/b;->a:La/g/a/i;

    iput v7, v6, La/g/a/i;->c:I

    .line 104
    sget-object v6, La/g/a/e;->q:La/g/a/f;

    if-eqz v6, :cond_b

    .line 105
    iget-wide v9, v6, La/g/a/f;->j:J

    add-long/2addr v9, v0

    iput-wide v9, v6, La/g/a/f;->j:J

    .line 106
    :cond_b
    invoke-virtual {v5, v4}, La/g/a/b;->d(La/g/a/i;)V

    .line 107
    iget-object v4, v5, La/g/a/b;->a:La/g/a/i;

    iput v8, v4, La/g/a/i;->c:I

    .line 108
    invoke-virtual {v4, v5}, La/g/a/i;->c(La/g/a/b;)V

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_d
    return v3
.end method

.method public static a(La/g/a/e;La/g/a/i;La/g/a/i;La/g/a/i;FZ)La/g/a/b;
    .locals 1

    .line 141
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    if-eqz p5, :cond_0

    .line 142
    invoke-direct {p0, v0}, La/g/a/e;->b(La/g/a/b;)V

    .line 143
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, La/g/a/b;->a(La/g/a/i;La/g/a/i;La/g/a/i;F)La/g/a/b;

    return-object v0
.end method

.method private a(La/g/a/i$a;Ljava/lang/String;)La/g/a/i;
    .locals 2

    .line 38
    iget-object v0, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v0, v0, La/g/a/c;->b:La/g/a/g;

    invoke-interface {v0}, La/g/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/a/i;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, La/g/a/i;

    invoke-direct {v0, p1, p2}, La/g/a/i;-><init>(La/g/a/i$a;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1, p2}, La/g/a/i;->a(La/g/a/i$a;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, La/g/a/i;->a()V

    .line 42
    invoke-virtual {v0, p1, p2}, La/g/a/i;->a(La/g/a/i$a;Ljava/lang/String;)V

    .line 43
    :goto_0
    iget p1, p0, La/g/a/e;->n:I

    sget p2, La/g/a/e;->p:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 44
    sput p2, La/g/a/e;->p:I

    .line 45
    iget-object p1, p0, La/g/a/e;->m:[La/g/a/i;

    sget p2, La/g/a/e;->p:I

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [La/g/a/i;

    iput-object p1, p0, La/g/a/e;->m:[La/g/a/i;

    .line 46
    :cond_1
    iget-object p1, p0, La/g/a/e;->m:[La/g/a/i;

    iget p2, p0, La/g/a/e;->n:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, La/g/a/e;->n:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private b(La/g/a/e$a;)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 8
    :goto_0
    iget v3, v0, La/g/a/e;->j:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 9
    iget-object v3, v0, La/g/a/e;->f:[La/g/a/b;

    aget-object v6, v3, v2

    iget-object v6, v6, La/g/a/b;->a:La/g/a/i;

    .line 10
    iget-object v6, v6, La/g/a/i;->g:La/g/a/i$a;

    sget-object v7, La/g/a/i$a;->UNRESTRICTED:La/g/a/i$a;

    if-ne v6, v7, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    aget-object v3, v3, v2

    iget v3, v3, La/g/a/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_11

    .line 12
    sget-object v6, La/g/a/e;->q:La/g/a/f;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3

    .line 13
    iget-wide v9, v6, La/g/a/f;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, La/g/a/f;->k:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v9, -0x1

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v13, 0x0

    .line 14
    :goto_4
    iget v14, v0, La/g/a/e;->j:I

    if-ge v6, v14, :cond_c

    .line 15
    iget-object v14, v0, La/g/a/e;->f:[La/g/a/b;

    aget-object v14, v14, v6

    .line 16
    iget-object v15, v14, La/g/a/b;->a:La/g/a/i;

    .line 17
    iget-object v15, v15, La/g/a/i;->g:La/g/a/i$a;

    sget-object v1, La/g/a/i$a;->UNRESTRICTED:La/g/a/i$a;

    if-ne v15, v1, :cond_4

    goto :goto_8

    .line 18
    :cond_4
    iget-boolean v1, v14, La/g/a/b;->e:Z

    if-eqz v1, :cond_5

    goto :goto_8

    .line 19
    :cond_5
    iget v1, v14, La/g/a/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_b

    const/4 v1, 0x1

    .line 20
    :goto_5
    iget v15, v0, La/g/a/e;->i:I

    if-ge v1, v15, :cond_b

    .line 21
    iget-object v15, v0, La/g/a/e;->l:La/g/a/c;

    iget-object v15, v15, La/g/a/c;->c:[La/g/a/i;

    aget-object v15, v15, v1

    .line 22
    iget-object v5, v14, La/g/a/b;->d:La/g/a/a;

    invoke-virtual {v5, v15}, La/g/a/a;->b(La/g/a/i;)F

    move-result v5

    cmpg-float v16, v5, v4

    if-gtz v16, :cond_6

    goto :goto_7

    :cond_6
    move v4, v13

    move v13, v12

    move v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_6
    const/4 v7, 0x7

    if-ge v10, v7, :cond_a

    .line 23
    iget-object v7, v15, La/g/a/i;->f:[F

    aget v7, v7, v10

    div-float/2addr v7, v5

    cmpg-float v8, v7, v13

    if-gez v8, :cond_7

    if-eq v10, v4, :cond_8

    :cond_7
    if-le v10, v4, :cond_9

    :cond_8
    move v12, v1

    move v11, v6

    move v13, v7

    move v4, v10

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v4

    :goto_7
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_5

    :cond_b
    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const-wide/16 v7, 0x1

    goto :goto_4

    :cond_c
    if-eq v10, v9, :cond_e

    .line 24
    iget-object v1, v0, La/g/a/e;->f:[La/g/a/b;

    aget-object v1, v1, v10

    .line 25
    iget-object v4, v1, La/g/a/b;->a:La/g/a/i;

    iput v9, v4, La/g/a/i;->c:I

    .line 26
    sget-object v4, La/g/a/e;->q:La/g/a/f;

    if-eqz v4, :cond_d

    .line 27
    iget-wide v5, v4, La/g/a/f;->j:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v4, La/g/a/f;->j:J

    .line 28
    :cond_d
    iget-object v4, v0, La/g/a/e;->l:La/g/a/c;

    iget-object v4, v4, La/g/a/c;->c:[La/g/a/i;

    aget-object v4, v4, v11

    invoke-virtual {v1, v4}, La/g/a/b;->d(La/g/a/i;)V

    .line 29
    iget-object v4, v1, La/g/a/b;->a:La/g/a/i;

    iput v10, v4, La/g/a/i;->c:I

    .line 30
    invoke-virtual {v4, v1}, La/g/a/i;->c(La/g/a/b;)V

    goto :goto_9

    :cond_e
    const/4 v2, 0x1

    .line 31
    :goto_9
    iget v1, v0, La/g/a/e;->i:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v3, 0x0

    :cond_11
    return v3
.end method

.method private b(La/g/a/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p0, v0}, La/g/a/b;->a(La/g/a/e;I)La/g/a/b;

    return-void
.end method

.method private final c(La/g/a/b;)V
    .locals 3

    .line 10
    iget-object v0, p0, La/g/a/e;->f:[La/g/a/b;

    iget v1, p0, La/g/a/e;->j:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 11
    iget-object v2, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v2, v2, La/g/a/c;->a:La/g/a/g;

    aget-object v0, v0, v1

    invoke-interface {v2, v0}, La/g/a/g;->a(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object v0, p0, La/g/a/e;->f:[La/g/a/b;

    iget v1, p0, La/g/a/e;->j:I

    aput-object p1, v0, v1

    .line 13
    iget-object v0, p1, La/g/a/b;->a:La/g/a/i;

    iput v1, v0, La/g/a/i;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 14
    iput v1, p0, La/g/a/e;->j:I

    .line 15
    invoke-virtual {v0, p1}, La/g/a/i;->c(La/g/a/b;)V

    return-void
.end method

.method private final d(La/g/a/b;)V
    .locals 2

    .line 1
    iget v0, p0, La/g/a/e;->j:I

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p1, La/g/a/b;->d:La/g/a/a;

    iget-object v1, p0, La/g/a/e;->f:[La/g/a/b;

    invoke-virtual {v0, p1, v1}, La/g/a/a;->a(La/g/a/b;[La/g/a/b;)V

    .line 3
    iget-object v0, p1, La/g/a/b;->d:La/g/a/a;

    iget v0, v0, La/g/a/a;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, La/g/a/b;->e:Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, La/g/a/e;->j:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, La/g/a/e;->f:[La/g/a/b;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, La/g/a/b;->a:La/g/a/i;

    iget v1, v1, La/g/a/b;->b:F

    iput v1, v2, La/g/a/i;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h()La/g/a/f;
    .locals 1

    .line 1
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    return-object v0
.end method

.method private i()V
    .locals 6

    .line 1
    iget v0, p0, La/g/a/e;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, La/g/a/e;->d:I

    .line 2
    iget-object v0, p0, La/g/a/e;->f:[La/g/a/b;

    iget v1, p0, La/g/a/e;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/g/a/b;

    iput-object v0, p0, La/g/a/e;->f:[La/g/a/b;

    .line 3
    iget-object v0, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v1, v0, La/g/a/c;->c:[La/g/a/i;

    iget v2, p0, La/g/a/e;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [La/g/a/i;

    iput-object v1, v0, La/g/a/c;->c:[La/g/a/i;

    .line 4
    iget v0, p0, La/g/a/e;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, La/g/a/e;->h:[Z

    .line 5
    iput v0, p0, La/g/a/e;->e:I

    .line 6
    iput v0, p0, La/g/a/e;->k:I

    .line 7
    sget-object v1, La/g/a/e;->q:La/g/a/f;

    if-eqz v1, :cond_0

    .line 8
    iget-wide v2, v1, La/g/a/f;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, La/g/a/f;->d:J

    .line 9
    iget-wide v2, v1, La/g/a/f;->o:J

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, La/g/a/f;->o:J

    .line 10
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    iget-wide v1, v0, La/g/a/f;->o:J

    iput-wide v1, v0, La/g/a/f;->A:J

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, La/g/a/e;->f:[La/g/a/b;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v2, v2, La/g/a/c;->a:La/g/a/g;

    invoke-interface {v2, v1}, La/g/a/g;->a(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, La/g/a/e;->f:[La/g/a/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(La/g/a/i;La/g/a/i;II)La/g/a/b;
    .locals 1

    .line 124
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1, p2, p3}, La/g/a/b;->a(La/g/a/i;La/g/a/i;I)La/g/a/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 126
    invoke-virtual {v0, p0, p4}, La/g/a/b;->a(La/g/a/e;I)La/g/a/b;

    .line 127
    :cond_0
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    return-object v0
.end method

.method public a()La/g/a/i;
    .locals 5

    .line 16
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    if-eqz v0, :cond_0

    .line 17
    iget-wide v1, v0, La/g/a/f;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, La/g/a/f;->n:J

    .line 18
    :cond_0
    iget v0, p0, La/g/a/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/g/a/e;->e:I

    if-lt v0, v1, :cond_1

    .line 19
    invoke-direct {p0}, La/g/a/e;->i()V

    .line 20
    :cond_1
    sget-object v0, La/g/a/i$a;->SLACK:La/g/a/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/g/a/e;->a(La/g/a/i$a;Ljava/lang/String;)La/g/a/i;

    move-result-object v0

    .line 21
    iget v1, p0, La/g/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/g/a/e;->a:I

    .line 22
    iget v1, p0, La/g/a/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/g/a/e;->i:I

    .line 23
    iget v1, p0, La/g/a/e;->a:I

    iput v1, v0, La/g/a/i;->b:I

    .line 24
    iget-object v2, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v2, v2, La/g/a/c;->c:[La/g/a/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public a(ILjava/lang/String;)La/g/a/i;
    .locals 5

    .line 27
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    if-eqz v0, :cond_0

    .line 28
    iget-wide v1, v0, La/g/a/f;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, La/g/a/f;->l:J

    .line 29
    :cond_0
    iget v0, p0, La/g/a/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/g/a/e;->e:I

    if-lt v0, v1, :cond_1

    .line 30
    invoke-direct {p0}, La/g/a/e;->i()V

    .line 31
    :cond_1
    sget-object v0, La/g/a/i$a;->ERROR:La/g/a/i$a;

    invoke-direct {p0, v0, p2}, La/g/a/e;->a(La/g/a/i$a;Ljava/lang/String;)La/g/a/i;

    move-result-object p2

    .line 32
    iget v0, p0, La/g/a/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/a/e;->a:I

    .line 33
    iget v0, p0, La/g/a/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/g/a/e;->i:I

    .line 34
    iget v0, p0, La/g/a/e;->a:I

    iput v0, p2, La/g/a/i;->b:I

    .line 35
    iput p1, p2, La/g/a/i;->d:I

    .line 36
    iget-object p1, p0, La/g/a/e;->l:La/g/a/c;

    iget-object p1, p1, La/g/a/c;->c:[La/g/a/i;

    aput-object p2, p1, v0

    .line 37
    iget-object p1, p0, La/g/a/e;->c:La/g/a/e$a;

    invoke-interface {p1, p2}, La/g/a/e$a;->a(La/g/a/i;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)La/g/a/i;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v1, p0, La/g/a/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, La/g/a/e;->e:I

    if-lt v1, v2, :cond_1

    .line 3
    invoke-direct {p0}, La/g/a/e;->i()V

    .line 4
    :cond_1
    instance-of v1, p1, La/g/a/j/e;

    if-eqz v1, :cond_5

    .line 5
    check-cast p1, La/g/a/j/e;

    invoke-virtual {p1}, La/g/a/j/e;->e()La/g/a/i;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, La/g/a/e;->l:La/g/a/c;

    invoke-virtual {p1, v0}, La/g/a/j/e;->a(La/g/a/c;)V

    .line 7
    invoke-virtual {p1}, La/g/a/j/e;->e()La/g/a/i;

    move-result-object p1

    move-object v0, p1

    .line 8
    :cond_2
    iget p1, v0, La/g/a/i;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v2, p0, La/g/a/e;->a:I

    if-gt p1, v2, :cond_3

    iget-object v2, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v2, v2, La/g/a/c;->c:[La/g/a/i;

    aget-object p1, v2, p1

    if-nez p1, :cond_5

    .line 9
    :cond_3
    iget p1, v0, La/g/a/i;->b:I

    if-eq p1, v1, :cond_4

    .line 10
    invoke-virtual {v0}, La/g/a/i;->a()V

    .line 11
    :cond_4
    iget p1, p0, La/g/a/e;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/g/a/e;->a:I

    .line 12
    iget p1, p0, La/g/a/e;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La/g/a/e;->i:I

    .line 13
    iget p1, p0, La/g/a/e;->a:I

    iput p1, v0, La/g/a/i;->b:I

    .line 14
    sget-object v1, La/g/a/i$a;->UNRESTRICTED:La/g/a/i$a;

    iput-object v1, v0, La/g/a/i;->g:La/g/a/i$a;

    .line 15
    iget-object v1, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v1, v1, La/g/a/c;->c:[La/g/a/i;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public a(La/g/a/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 56
    iget-wide v3, v0, La/g/a/f;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, La/g/a/f;->f:J

    .line 57
    iget-boolean v3, p1, La/g/a/b;->e:Z

    if-eqz v3, :cond_1

    .line 58
    iget-wide v3, v0, La/g/a/f;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, La/g/a/f;->g:J

    .line 59
    :cond_1
    iget v0, p0, La/g/a/e;->j:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, La/g/a/e;->k:I

    if-ge v0, v4, :cond_2

    iget v0, p0, La/g/a/e;->i:I

    add-int/2addr v0, v3

    iget v4, p0, La/g/a/e;->e:I

    if-lt v0, v4, :cond_3

    .line 60
    :cond_2
    invoke-direct {p0}, La/g/a/e;->i()V

    :cond_3
    const/4 v0, 0x0

    .line 61
    iget-boolean v4, p1, La/g/a/b;->e:Z

    if-nez v4, :cond_a

    .line 62
    invoke-direct {p0, p1}, La/g/a/e;->d(La/g/a/b;)V

    .line 63
    invoke-virtual {p1}, La/g/a/b;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 64
    :cond_4
    invoke-virtual {p1}, La/g/a/b;->a()V

    .line 65
    invoke-virtual {p1, p0}, La/g/a/b;->a(La/g/a/e;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 66
    invoke-virtual {p0}, La/g/a/e;->a()La/g/a/i;

    move-result-object v0

    .line 67
    iput-object v0, p1, La/g/a/b;->a:La/g/a/i;

    .line 68
    invoke-direct {p0, p1}, La/g/a/e;->c(La/g/a/b;)V

    .line 69
    iget-object v4, p0, La/g/a/e;->o:La/g/a/e$a;

    invoke-interface {v4, p1}, La/g/a/e$a;->a(La/g/a/e$a;)V

    .line 70
    iget-object v4, p0, La/g/a/e;->o:La/g/a/e$a;

    invoke-direct {p0, v4, v3}, La/g/a/e;->a(La/g/a/e$a;Z)I

    .line 71
    iget v4, v0, La/g/a/i;->c:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    .line 72
    iget-object v4, p1, La/g/a/b;->a:La/g/a/i;

    if-ne v4, v0, :cond_6

    .line 73
    invoke-virtual {p1, v0}, La/g/a/b;->c(La/g/a/i;)La/g/a/i;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 74
    sget-object v4, La/g/a/e;->q:La/g/a/f;

    if-eqz v4, :cond_5

    .line 75
    iget-wide v5, v4, La/g/a/f;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, La/g/a/f;->j:J

    .line 76
    :cond_5
    invoke-virtual {p1, v0}, La/g/a/b;->d(La/g/a/i;)V

    .line 77
    :cond_6
    iget-boolean v0, p1, La/g/a/b;->e:Z

    if-nez v0, :cond_7

    .line 78
    iget-object v0, p1, La/g/a/b;->a:La/g/a/i;

    invoke-virtual {v0, p1}, La/g/a/i;->c(La/g/a/b;)V

    .line 79
    :cond_7
    iget v0, p0, La/g/a/e;->j:I

    sub-int/2addr v0, v3

    iput v0, p0, La/g/a/e;->j:I

    :cond_8
    const/4 v0, 0x1

    .line 80
    :cond_9
    invoke-virtual {p1}, La/g/a/b;->b()Z

    move-result v1

    if-nez v1, :cond_a

    return-void

    :cond_a
    if-nez v0, :cond_b

    .line 81
    invoke-direct {p0, p1}, La/g/a/e;->c(La/g/a/b;)V

    :cond_b
    return-void
.end method

.method a(La/g/a/b;II)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, p3, v0}, La/g/a/e;->a(ILjava/lang/String;)La/g/a/i;

    move-result-object p3

    .line 26
    invoke-virtual {p1, p3, p2}, La/g/a/b;->a(La/g/a/i;I)La/g/a/b;

    return-void
.end method

.method a(La/g/a/e$a;)V
    .locals 5

    .line 47
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    if-eqz v0, :cond_0

    .line 48
    iget-wide v1, v0, La/g/a/f;->s:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, La/g/a/f;->s:J

    .line 49
    iget-wide v1, v0, La/g/a/f;->t:J

    iget v3, p0, La/g/a/e;->i:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, La/g/a/f;->t:J

    .line 50
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    iget-wide v1, v0, La/g/a/f;->u:J

    iget v3, p0, La/g/a/e;->j:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, La/g/a/f;->u:J

    .line 51
    :cond_0
    move-object v0, p1

    check-cast v0, La/g/a/b;

    invoke-direct {p0, v0}, La/g/a/e;->d(La/g/a/b;)V

    .line 52
    invoke-direct {p0, p1}, La/g/a/e;->b(La/g/a/e$a;)I

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, La/g/a/e;->a(La/g/a/e$a;Z)I

    .line 54
    invoke-direct {p0}, La/g/a/e;->g()V

    return-void
.end method

.method public a(La/g/a/f;)V
    .locals 0

    .line 1
    sput-object p1, La/g/a/e;->q:La/g/a/f;

    return-void
.end method

.method public a(La/g/a/i;I)V
    .locals 2

    .line 128
    iget v0, p1, La/g/a/i;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 129
    iget-object v1, p0, La/g/a/e;->f:[La/g/a/b;

    aget-object v0, v1, v0

    .line 130
    iget-boolean v1, v0, La/g/a/b;->e:Z

    if-eqz v1, :cond_0

    int-to-float p1, p2

    .line 131
    iput p1, v0, La/g/a/b;->b:F

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, v0, La/g/a/b;->d:La/g/a/a;

    iget v1, v1, La/g/a/a;->a:I

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 133
    iput-boolean p1, v0, La/g/a/b;->e:Z

    int-to-float p1, p2

    .line 134
    iput p1, v0, La/g/a/b;->b:F

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p1, p2}, La/g/a/b;->c(La/g/a/i;I)La/g/a/b;

    .line 137
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 139
    invoke-virtual {v0, p1, p2}, La/g/a/b;->b(La/g/a/i;I)La/g/a/b;

    .line 140
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    :goto_0
    return-void
.end method

.method public a(La/g/a/i;La/g/a/i;IFLa/g/a/i;La/g/a/i;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 116
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 117
    invoke-virtual/range {v2 .. v9}, La/g/a/b;->a(La/g/a/i;La/g/a/i;IFLa/g/a/i;La/g/a/i;I)La/g/a/b;

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    .line 118
    invoke-virtual {v10, p0, v1}, La/g/a/b;->a(La/g/a/e;I)La/g/a/b;

    .line 119
    :cond_0
    invoke-virtual {p0, v10}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public a(La/g/a/i;La/g/a/i;La/g/a/i;La/g/a/i;FI)V
    .locals 7

    .line 120
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 121
    invoke-virtual/range {v0 .. v5}, La/g/a/b;->a(La/g/a/i;La/g/a/i;La/g/a/i;La/g/a/i;F)La/g/a/b;

    const/4 p1, 0x6

    if-eq p6, p1, :cond_0

    .line 122
    invoke-virtual {v6, p0, p6}, La/g/a/b;->a(La/g/a/e;I)La/g/a/b;

    .line 123
    :cond_0
    invoke-virtual {p0, v6}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public a(La/g/a/i;La/g/a/i;Z)V
    .locals 3

    .line 109
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, La/g/a/e;->c()La/g/a/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 111
    iput v2, v1, La/g/a/i;->d:I

    .line 112
    invoke-virtual {v0, p1, p2, v1, v2}, La/g/a/b;->a(La/g/a/i;La/g/a/i;La/g/a/i;I)La/g/a/b;

    if-eqz p3, :cond_0

    .line 113
    iget-object p1, v0, La/g/a/b;->d:La/g/a/a;

    invoke-virtual {p1, v1}, La/g/a/a;->b(La/g/a/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 114
    invoke-virtual {p0, v0, p1, p2}, La/g/a/e;->a(La/g/a/b;II)V

    .line 115
    :cond_0
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public a(La/g/a/j/f;La/g/a/j/f;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 144
    sget-object v3, La/g/a/j/e$d;->LEFT:La/g/a/j/e$d;

    invoke-virtual {v1, v3}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v3

    invoke-virtual {v0, v3}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v5

    .line 145
    sget-object v3, La/g/a/j/e$d;->TOP:La/g/a/j/e$d;

    invoke-virtual {v1, v3}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v3

    invoke-virtual {v0, v3}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v7

    .line 146
    sget-object v3, La/g/a/j/e$d;->RIGHT:La/g/a/j/e$d;

    invoke-virtual {v1, v3}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v3

    invoke-virtual {v0, v3}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v3

    .line 147
    sget-object v4, La/g/a/j/e$d;->BOTTOM:La/g/a/j/e$d;

    invoke-virtual {v1, v4}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v8

    .line 148
    sget-object v1, La/g/a/j/e$d;->LEFT:La/g/a/j/e$d;

    invoke-virtual {v2, v1}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v1

    invoke-virtual {v0, v1}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v1

    .line 149
    sget-object v4, La/g/a/j/e$d;->TOP:La/g/a/j/e$d;

    invoke-virtual {v2, v4}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v4

    invoke-virtual {v0, v4}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v9

    .line 150
    sget-object v4, La/g/a/j/e$d;->RIGHT:La/g/a/j/e$d;

    invoke-virtual {v2, v4}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v4

    invoke-virtual {v0, v4}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v12

    .line 151
    sget-object v4, La/g/a/j/e$d;->BOTTOM:La/g/a/j/e$d;

    invoke-virtual {v2, v4}, La/g/a/j/f;->a(La/g/a/j/e$d;)La/g/a/j/e;

    move-result-object v2

    invoke-virtual {v0, v2}, La/g/a/e;->a(Ljava/lang/Object;)La/g/a/i;

    move-result-object v10

    .line 152
    invoke-virtual/range {p0 .. p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 153
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 154
    invoke-virtual/range {v6 .. v11}, La/g/a/b;->b(La/g/a/i;La/g/a/i;La/g/a/i;La/g/a/i;F)La/g/a/b;

    .line 155
    invoke-virtual {v0, v2}, La/g/a/e;->a(La/g/a/b;)V

    .line 156
    invoke-virtual/range {p0 .. p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v2

    .line 157
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 158
    invoke-virtual/range {v4 .. v9}, La/g/a/b;->b(La/g/a/i;La/g/a/i;La/g/a/i;La/g/a/i;F)La/g/a/b;

    .line 159
    invoke-virtual {v0, v2}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 6
    check-cast p1, La/g/a/j/e;

    invoke-virtual {p1}, La/g/a/j/e;->e()La/g/a/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    iget p1, p1, La/g/a/i;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()La/g/a/b;
    .locals 2

    .line 1
    iget-object v0, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v0, v0, La/g/a/c;->a:La/g/a/g;

    invoke-interface {v0}, La/g/a/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/g/a/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La/g/a/b;

    iget-object v1, p0, La/g/a/e;->l:La/g/a/c;

    invoke-direct {v0, v1}, La/g/a/b;-><init>(La/g/a/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, La/g/a/b;->d()V

    .line 4
    :goto_0
    invoke-static {}, La/g/a/i;->b()V

    return-object v0
.end method

.method public b(La/g/a/i;La/g/a/i;II)V
    .locals 3

    .line 32
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, La/g/a/e;->c()La/g/a/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 34
    iput v2, v1, La/g/a/i;->d:I

    .line 35
    invoke-virtual {v0, p1, p2, v1, p3}, La/g/a/b;->a(La/g/a/i;La/g/a/i;La/g/a/i;I)La/g/a/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 36
    iget-object p1, v0, La/g/a/b;->d:La/g/a/a;

    invoke-virtual {p1, v1}, La/g/a/a;->b(La/g/a/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 37
    invoke-virtual {p0, v0, p1, p4}, La/g/a/e;->a(La/g/a/b;II)V

    .line 38
    :cond_0
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public b(La/g/a/i;La/g/a/i;Z)V
    .locals 3

    .line 39
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, La/g/a/e;->c()La/g/a/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    iput v2, v1, La/g/a/i;->d:I

    .line 42
    invoke-virtual {v0, p1, p2, v1, v2}, La/g/a/b;->b(La/g/a/i;La/g/a/i;La/g/a/i;I)La/g/a/b;

    if-eqz p3, :cond_0

    .line 43
    iget-object p1, v0, La/g/a/b;->d:La/g/a/a;

    invoke-virtual {p1, v1}, La/g/a/a;->b(La/g/a/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x1

    .line 44
    invoke-virtual {p0, v0, p1, p2}, La/g/a/e;->a(La/g/a/b;II)V

    .line 45
    :cond_0
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public c()La/g/a/i;
    .locals 5

    .line 1
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, v0, La/g/a/f;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, La/g/a/f;->m:J

    .line 3
    :cond_0
    iget v0, p0, La/g/a/e;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, La/g/a/e;->e:I

    if-lt v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, La/g/a/e;->i()V

    .line 5
    :cond_1
    sget-object v0, La/g/a/i$a;->SLACK:La/g/a/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/g/a/e;->a(La/g/a/i$a;Ljava/lang/String;)La/g/a/i;

    move-result-object v0

    .line 6
    iget v1, p0, La/g/a/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/g/a/e;->a:I

    .line 7
    iget v1, p0, La/g/a/e;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/g/a/e;->i:I

    .line 8
    iget v1, p0, La/g/a/e;->a:I

    iput v1, v0, La/g/a/i;->b:I

    .line 9
    iget-object v2, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v2, v2, La/g/a/c;->c:[La/g/a/i;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public c(La/g/a/i;La/g/a/i;II)V
    .locals 3

    .line 16
    invoke-virtual {p0}, La/g/a/e;->b()La/g/a/b;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, La/g/a/e;->c()La/g/a/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    iput v2, v1, La/g/a/i;->d:I

    .line 19
    invoke-virtual {v0, p1, p2, v1, p3}, La/g/a/b;->b(La/g/a/i;La/g/a/i;La/g/a/i;I)La/g/a/b;

    const/4 p1, 0x6

    if-eq p4, p1, :cond_0

    .line 20
    iget-object p1, v0, La/g/a/b;->d:La/g/a/a;

    invoke-virtual {p1, v1}, La/g/a/a;->b(La/g/a/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 21
    invoke-virtual {p0, v0, p1, p4}, La/g/a/e;->a(La/g/a/b;II)V

    .line 22
    :cond_0
    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/b;)V

    return-void
.end method

.method public d()La/g/a/c;
    .locals 1

    .line 5
    iget-object v0, p0, La/g/a/e;->l:La/g/a/c;

    return-object v0
.end method

.method public e()V
    .locals 5

    .line 1
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v3, v0, La/g/a/f;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, La/g/a/f;->e:J

    .line 3
    :cond_0
    iget-boolean v0, p0, La/g/a/e;->g:Z

    if-eqz v0, :cond_6

    .line 4
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    if-eqz v0, :cond_1

    .line 5
    iget-wide v3, v0, La/g/a/f;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, La/g/a/f;->q:J

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v4, p0, La/g/a/e;->j:I

    if-ge v3, v4, :cond_3

    .line 7
    iget-object v4, p0, La/g/a/e;->f:[La/g/a/b;

    aget-object v4, v4, v3

    .line 8
    iget-boolean v4, v4, La/g/a/b;->e:Z

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, La/g/a/e;->c:La/g/a/e$a;

    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/e$a;)V

    goto :goto_2

    .line 10
    :cond_4
    sget-object v0, La/g/a/e;->q:La/g/a/f;

    if-eqz v0, :cond_5

    .line 11
    iget-wide v3, v0, La/g/a/f;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, La/g/a/f;->p:J

    .line 12
    :cond_5
    invoke-direct {p0}, La/g/a/e;->g()V

    goto :goto_2

    .line 13
    :cond_6
    iget-object v0, p0, La/g/a/e;->c:La/g/a/e$a;

    invoke-virtual {p0, v0}, La/g/a/e;->a(La/g/a/e$a;)V

    :goto_2
    return-void
.end method

.method public f()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v3, v2, La/g/a/c;->c:[La/g/a/i;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 2
    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, La/g/a/i;->a()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, La/g/a/c;->b:La/g/a/g;

    iget-object v2, p0, La/g/a/e;->m:[La/g/a/i;

    iget v3, p0, La/g/a/e;->n:I

    invoke-interface {v1, v2, v3}, La/g/a/g;->a([Ljava/lang/Object;I)V

    .line 5
    iput v0, p0, La/g/a/e;->n:I

    .line 6
    iget-object v1, p0, La/g/a/e;->l:La/g/a/c;

    iget-object v1, v1, La/g/a/c;->c:[La/g/a/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, La/g/a/e;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 9
    :cond_2
    iput v0, p0, La/g/a/e;->a:I

    .line 10
    iget-object v1, p0, La/g/a/e;->c:La/g/a/e$a;

    invoke-interface {v1}, La/g/a/e$a;->clear()V

    const/4 v1, 0x1

    .line 11
    iput v1, p0, La/g/a/e;->i:I

    const/4 v1, 0x0

    .line 12
    :goto_1
    iget v2, p0, La/g/a/e;->j:I

    if-ge v1, v2, :cond_3

    .line 13
    iget-object v2, p0, La/g/a/e;->f:[La/g/a/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, La/g/a/b;->c:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-direct {p0}, La/g/a/e;->j()V

    .line 15
    iput v0, p0, La/g/a/e;->j:I

    return-void
.end method
