.class public Lcom/alibaba/fastjson/a/c;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/a/c$a;
    }
.end annotation


# instance fields
.field public final e:Lcom/alibaba/fastjson/a/p;

.field public f:Lcom/alibaba/fastjson/a/n;

.field private g:Ljava/lang/String;

.field private h:Ljava/text/DateFormat;

.field public final i:Lcom/alibaba/fastjson/a/f;

.field protected j:Lcom/alibaba/fastjson/a/m;

.field private k:[Lcom/alibaba/fastjson/a/m;

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field protected o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public q:Lcom/alibaba/fastjson/a/a/e;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/f;Lcom/alibaba/fastjson/a/n;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/a/c;->l:I

    .line 7
    iput v0, p0, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->o:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->p:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->q:Lcom/alibaba/fastjson/a/a/e;

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    .line 13
    iget-object p2, p2, Lcom/alibaba/fastjson/a/n;->b:Lcom/alibaba/fastjson/a/p;

    iput-object p2, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    .line 14
    iget-char p2, p1, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v0, 0x1a

    const/16 v1, 0x7b

    if-ne p2, v1, :cond_1

    .line 15
    iget p2, p1, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/alibaba/fastjson/a/f;->e:I

    .line 16
    iget v1, p1, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p1, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 p2, 0xc

    .line 18
    iput p2, p1, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_2

    :cond_1
    const/16 v1, 0x5b

    if-ne p2, v1, :cond_3

    .line 19
    iget p2, p1, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/alibaba/fastjson/a/f;->e:I

    .line 20
    iget v1, p1, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt p2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1
    iput-char v0, p1, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 p2, 0xe

    .line 22
    iput p2, p1, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/f;->e()V

    :goto_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/a/f;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Lcom/alibaba/fastjson/a/f;Lcom/alibaba/fastjson/a/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/a/n;I)V
    .locals 1

    .line 2
    new-instance v0, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/fastjson/a/c;-><init>(Lcom/alibaba/fastjson/a/f;Lcom/alibaba/fastjson/a/n;)V

    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/a/n;I)V
    .locals 1

    .line 3
    new-instance v0, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/a/f;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/a/c;-><init>(Lcom/alibaba/fastjson/a/f;Lcom/alibaba/fastjson/a/n;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/a/f;->t:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 457
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/a/m;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/a/m;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 458
    iget p1, p0, Lcom/alibaba/fastjson/a/c;->l:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lcom/alibaba/fastjson/a/c;->l:I

    .line 459
    iget-object p2, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    if-nez p2, :cond_1

    const/16 p2, 0x8

    new-array p2, p2, [Lcom/alibaba/fastjson/a/m;

    .line 460
    iput-object p2, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    goto :goto_0

    .line 461
    :cond_1
    array-length p3, p2

    if-lt p1, p3, :cond_2

    .line 462
    array-length p3, p2

    mul-int/lit8 p3, p3, 0x3

    div-int/lit8 p3, p3, 0x2

    .line 463
    new-array p3, p3, [Lcom/alibaba/fastjson/a/m;

    .line 464
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iput-object p3, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    .line 466
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    iget-object p3, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    aput-object p3, p2, p1

    return-object p3
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 222
    const-class v1, [B

    if-ne p1, v1, :cond_1

    .line 223
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->l()[B

    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object p1

    .line 225
    :cond_1
    const-class v1, [C

    if-ne p1, v1, :cond_2

    .line 226
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object p1

    .line 227
    iget-object p2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p2}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v0

    .line 230
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/alibaba/fastjson/f; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 231
    new-instance p2, Lcom/alibaba/fastjson/f;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 232
    throw p1
.end method

.method public final a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 2
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object v6

    :cond_0
    const/16 v7, 0xc

    const/16 v8, 0x10

    if-eq v4, v7, :cond_2

    if-ne v4, v8, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    :goto_0
    instance-of v4, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_3

    .line 6
    move-object v4, v0

    check-cast v4, Lcom/alibaba/fastjson/JSONObject;

    .line 7
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v4

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    move-object v4, v0

    const/4 v11, 0x0

    .line 8
    :goto_1
    iget v12, v3, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v13, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    iget v13, v13, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 9
    :goto_2
    iget-boolean v13, v3, Lcom/alibaba/fastjson/a/f;->t:Z

    .line 10
    iget-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    const/4 v15, 0x0

    .line 11
    :goto_3
    :try_start_0
    iget-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v5, 0x7d

    const/16 v7, 0x22

    if-eq v6, v7, :cond_5

    if-eq v6, v5, :cond_5

    .line 12
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 13
    iget-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C

    :cond_5
    :goto_4
    const/16 v8, 0x2c

    if-ne v6, v8, :cond_6

    .line 14
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 15
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 16
    iget-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    const-string v8, "expect \':\' at "

    const/16 v9, 0x3a

    const-string v10, "syntax error, "

    const/16 v5, 0x1a

    if-ne v6, v7, :cond_9

    .line 17
    :try_start_1
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;C)Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-char v7, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-eq v7, v9, :cond_8

    .line 19
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 20
    iget-char v7, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v7, v9, :cond_7

    goto :goto_5

    .line 21
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    move-object v7, v6

    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_9
    const/16 v7, 0x7d

    if-ne v6, v7, :cond_c

    .line 22
    iget v2, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 23
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v2, v4, :cond_a

    goto :goto_6

    :cond_a
    iget-object v4, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 24
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/4 v2, 0x0

    .line 25
    iput v2, v3, Lcom/alibaba/fastjson/a/f;->h:I

    const/16 v2, 0x10

    .line 26
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_b

    .line 27
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_b
    return-object v0

    :cond_c
    const/16 v7, 0x27

    if-ne v6, v7, :cond_f

    .line 28
    :try_start_2
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    const/16 v7, 0x27

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;C)Ljava/lang/String;

    move-result-object v6

    .line 29
    iget-char v7, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-eq v7, v9, :cond_d

    .line 30
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 31
    :cond_d
    iget-char v7, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v7, v9, :cond_e

    goto :goto_5

    .line 32
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-eq v6, v5, :cond_6f

    const/16 v7, 0x2c

    if-eq v6, v7, :cond_6e

    const/16 v7, 0x30

    if-lt v6, v7, :cond_10

    const/16 v7, 0x39

    if-le v6, v7, :cond_11

    :cond_10
    const/16 v7, 0x2d

    if-ne v6, v7, :cond_15

    :cond_11
    const/4 v6, 0x0

    .line 33
    iput v6, v3, Lcom/alibaba/fastjson/a/f;->h:I

    .line 34
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    iget v6, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_12

    .line 36
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->g()Ljava/lang/Number;

    move-result-object v6

    goto :goto_7

    :cond_12
    const/4 v6, 0x1

    .line 37
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/a/f;->a(Z)Ljava/lang/Number;

    move-result-object v7

    move-object v6, v7

    :goto_7
    if-eqz v11, :cond_13

    .line 38
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :cond_13
    :try_start_4
    iget-char v7, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v7, v9, :cond_14

    goto/16 :goto_5

    .line 40
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse number key error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catch_0
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse number key error, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/16 v7, 0x7b

    if-eq v6, v7, :cond_18

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_16

    goto :goto_8

    .line 42
    :cond_16
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/a/f;->b(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 44
    iget-char v7, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v7, v9, :cond_17

    if-eqz v11, :cond_8

    .line 45
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 46
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_18
    :goto_8
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    const/4 v6, 0x1

    :goto_9
    const/16 v8, 0xd

    if-nez v6, :cond_1c

    .line 49
    iget v6, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v9, 0x1

    add-int/2addr v6, v9

    iput v6, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 50
    iget v9, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v9, :cond_19

    const/16 v6, 0x1a

    goto :goto_a

    :cond_19
    iget-object v9, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 51
    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_a
    iput-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C

    :goto_b
    const/16 v9, 0x20

    if-gt v6, v9, :cond_1b

    const/16 v9, 0x20

    if-eq v6, v9, :cond_1a

    const/16 v9, 0xa

    if-eq v6, v9, :cond_1a

    if-eq v6, v8, :cond_1a

    const/16 v9, 0x9

    if-eq v6, v9, :cond_1a

    const/16 v9, 0xc

    if-eq v6, v9, :cond_1a

    const/16 v9, 0x8

    if-ne v6, v9, :cond_1d

    goto :goto_c

    :cond_1a
    const/16 v9, 0x8

    .line 52
    :goto_c
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 53
    iget-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C

    goto :goto_b

    :cond_1b
    const/16 v9, 0x8

    goto :goto_d

    :cond_1c
    const/16 v9, 0x8

    .line 54
    iget-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C

    :cond_1d
    :goto_d
    const/4 v5, 0x0

    .line 55
    iput v5, v3, Lcom/alibaba/fastjson/a/f;->h:I

    const-string v5, "@type"

    if-ne v7, v5, :cond_2b

    .line 56
    sget-object v5, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    .line 57
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/e;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 58
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    const/16 v6, 0x22

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;C)Ljava/lang/String;

    move-result-object v5

    .line 59
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget v7, v3, Lcom/alibaba/fastjson/a/f;->c:I

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10, v7}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1e

    const-string v6, "@type"

    .line 60
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    const/16 v5, 0x8

    const/16 v7, 0xc

    const/16 v8, 0x10

    goto/16 :goto_3

    :cond_1e
    const/16 v4, 0x10

    .line 61
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 62
    iget v7, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v7, v8, :cond_26

    .line 63
    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    :try_start_5
    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v2

    .line 65
    instance-of v3, v2, Lcom/alibaba/fastjson/a/h;

    if-eqz v3, :cond_20

    .line 66
    check-cast v2, Lcom/alibaba/fastjson/a/h;

    .line 67
    invoke-virtual {v2, v1, v6}, Lcom/alibaba/fastjson/a/h;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 68
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 69
    check-cast v4, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 71
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_1f

    .line 72
    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_f

    :cond_20
    move-object v3, v10

    :cond_21
    if-nez v3, :cond_24

    .line 74
    const-class v0, Ljava/lang/Cloneable;

    if-ne v6, v0, :cond_22

    .line 75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_10

    :cond_22
    const-string v0, "java.util.Collections$EmptyMap"

    .line 76
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_10

    .line 78
    :cond_23
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_24
    :goto_10
    if-nez v13, :cond_25

    .line 79
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_25
    return-object v3

    :catch_1
    move-exception v0

    .line 80
    :try_start_6
    new-instance v2, Lcom/alibaba/fastjson/f;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_26
    const/4 v3, 0x2

    .line 81
    iput v3, v1, Lcom/alibaba/fastjson/a/c;->n:I

    .line 82
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    if-eqz v3, :cond_27

    instance-of v3, v2, Ljava/lang/Integer;

    if-nez v3, :cond_27

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/a/c;->o()V

    .line 84
    :cond_27
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_29

    .line 85
    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-static {v0, v6, v2}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v13, :cond_28

    .line 87
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_28
    return-object v0

    .line 88
    :cond_29
    :try_start_7
    iget-object v0, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v0

    .line 89
    invoke-interface {v0, v1, v6, v2}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v13, :cond_2a

    .line 90
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_2a
    return-object v0

    :cond_2b
    :try_start_8
    const-string v5, "$ref"

    const/4 v9, 0x4

    if-ne v7, v5, :cond_38

    if-eqz v14, :cond_38

    .line 91
    sget-object v5, Lcom/alibaba/fastjson/a/e;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/a/e;

    .line 92
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/e;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 93
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 94
    iget v0, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v0, v9, :cond_37

    .line 95
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const-string v2, "@"

    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 98
    iget-object v0, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 99
    iget-object v6, v0, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 100
    instance-of v2, v6, [Ljava/lang/Object;

    if-nez v2, :cond_34

    instance-of v2, v6, Ljava/util/Collection;

    if-eqz v2, :cond_2c

    goto :goto_13

    .line 101
    :cond_2c
    iget-object v2, v0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    if-eqz v2, :cond_33

    .line 102
    iget-object v0, v0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    iget-object v6, v0, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_13

    :cond_2d
    const-string v2, ".."

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 104
    iget-object v2, v14, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    if-eqz v2, :cond_2e

    .line 105
    iget-object v6, v14, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_13

    .line 106
    :cond_2e
    new-instance v2, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    const/4 v0, 0x1

    .line 107
    iput v0, v1, Lcom/alibaba/fastjson/a/c;->n:I

    goto :goto_12

    :cond_2f
    const-string v2, "$"

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object v2, v14

    .line 109
    :goto_11
    iget-object v4, v2, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    if-eqz v4, :cond_30

    .line 110
    iget-object v2, v2, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    goto :goto_11

    .line 111
    :cond_30
    iget-object v4, v2, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    if-eqz v4, :cond_31

    .line 112
    iget-object v0, v2, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    move-object v6, v0

    goto :goto_13

    .line 113
    :cond_31
    new-instance v4, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v4, v2, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    const/4 v0, 0x1

    .line 114
    iput v0, v1, Lcom/alibaba/fastjson/a/c;->n:I

    goto :goto_12

    .line 115
    :cond_32
    new-instance v2, Lcom/alibaba/fastjson/a/c$a;

    invoke-direct {v2, v14, v0}, Lcom/alibaba/fastjson/a/c$a;-><init>(Lcom/alibaba/fastjson/a/m;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/c$a;)V

    const/4 v0, 0x1

    .line 116
    iput v0, v1, Lcom/alibaba/fastjson/a/c;->n:I

    :cond_33
    :goto_12
    const/4 v6, 0x0

    .line 117
    :cond_34
    :goto_13
    iget v0, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v0, v8, :cond_36

    const/16 v0, 0x10

    .line 118
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v13, :cond_35

    .line 119
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_35
    return-object v6

    .line 120
    :cond_36
    :try_start_9
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_37
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal ref, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    invoke-static {v3}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    if-nez v13, :cond_3a

    if-nez v15, :cond_3a

    .line 122
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    invoke-virtual {v1, v5, v0, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    move-result-object v5

    if-nez v14, :cond_39

    move-object v14, v5

    :cond_39
    const/16 v5, 0x22

    const/4 v15, 0x1

    goto :goto_14

    :cond_3a
    const/16 v5, 0x22

    :goto_14
    if-ne v6, v5, :cond_3e

    .line 123
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/a/f;->b(C)Ljava/lang/String;

    move-result-object v5

    if-eqz v12, :cond_3c

    .line 124
    new-instance v6, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 125
    invoke-virtual {v6, v9}, Lcom/alibaba/fastjson/a/f;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 126
    iget-object v5, v6, Lcom/alibaba/fastjson/a/f;->o:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 127
    :cond_3b
    invoke-virtual {v6}, Lcom/alibaba/fastjson/a/f;->b()V

    :cond_3c
    if-eqz v4, :cond_3d

    .line 128
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 129
    :cond_3d
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_3e
    const/16 v5, 0x30

    if-lt v6, v5, :cond_3f

    const/16 v5, 0x39

    if-le v6, v5, :cond_40

    :cond_3f
    const/16 v5, 0x2d

    if-ne v6, v5, :cond_41

    .line 130
    :cond_40
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->r()Ljava/lang/Number;

    move-result-object v5

    .line 131
    invoke-interface {v4, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_15
    move/from16 v17, v11

    goto/16 :goto_1f

    :cond_41
    const/16 v5, 0x5b

    if-ne v6, v5, :cond_49

    const/16 v5, 0xe

    .line 132
    iput v5, v3, Lcom/alibaba/fastjson/a/f;->a:I

    .line 133
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 134
    iget v6, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v5, v6, :cond_42

    const/16 v5, 0x1a

    goto :goto_16

    :cond_42
    iget-object v6, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 135
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_16
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_43

    .line 137
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v9, Ljava/lang/Integer;

    if-ne v6, v9, :cond_43

    const/4 v6, 0x1

    goto :goto_17

    :cond_43
    const/4 v6, 0x0

    :goto_17
    if-nez v6, :cond_44

    .line 138
    invoke-virtual {v1, v14}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;)V

    .line 139
    :cond_44
    invoke-virtual {v1, v5, v7}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 140
    new-instance v6, Lcom/alibaba/fastjson/b;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson/b;-><init>(Ljava/util/List;)V

    if-eqz v4, :cond_45

    .line 141
    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 142
    :cond_45
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_18
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v5, v8, :cond_47

    const/16 v6, 0x10

    .line 144
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v13, :cond_46

    .line 145
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_46
    return-object v0

    :cond_47
    const/16 v6, 0x10

    if-ne v5, v6, :cond_48

    move/from16 v17, v11

    goto/16 :goto_21

    .line 146
    :cond_48
    :try_start_a
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/16 v5, 0x7b

    if-ne v6, v5, :cond_59

    .line 147
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 148
    iget v6, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v5, v6, :cond_4a

    const/16 v5, 0x1a

    goto :goto_19

    :cond_4a
    iget-object v6, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 149
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_19
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v5, 0xc

    .line 150
    iput v5, v3, Lcom/alibaba/fastjson/a/f;->a:I

    .line 151
    instance-of v6, v2, Ljava/lang/Integer;

    .line 152
    iget v9, v3, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v5, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    iget v5, v5, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v5, v9

    if-eqz v5, :cond_4b

    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v5, v9}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_1a

    :cond_4b
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_1a
    if-nez v13, :cond_4c

    if-nez v6, :cond_4c

    .line 153
    invoke-virtual {v1, v14, v5, v7}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    move-result-object v9

    goto :goto_1b

    :cond_4c
    const/4 v9, 0x0

    .line 154
    :goto_1b
    iget-object v8, v1, Lcom/alibaba/fastjson/a/c;->q:Lcom/alibaba/fastjson/a/a/e;

    if-eqz v8, :cond_4e

    if-eqz v7, :cond_4d

    .line 155
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move/from16 v17, v11

    goto :goto_1c

    :cond_4d
    move/from16 v17, v11

    const/4 v8, 0x0

    .line 156
    :goto_1c
    iget-object v11, v1, Lcom/alibaba/fastjson/a/c;->q:Lcom/alibaba/fastjson/a/a/e;

    invoke-interface {v11, v0, v8}, Lcom/alibaba/fastjson/a/a/e;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v8, :cond_4f

    .line 157
    iget-object v11, v1, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v11, v8}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v11

    .line 158
    invoke-interface {v11, v1, v8, v7}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    const/4 v8, 0x1

    goto :goto_1d

    :cond_4e
    move/from16 v17, v11

    :cond_4f
    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_1d
    if-nez v8, :cond_50

    .line 159
    invoke-virtual {v1, v5, v7}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    :cond_50
    if-eqz v9, :cond_51

    if-eq v5, v11, :cond_51

    .line 160
    iput-object v0, v9, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 161
    :cond_51
    iget v5, v1, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_52

    .line 162
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/alibaba/fastjson/a/c;->b(Ljava/util/Map;Ljava/lang/Object;)V

    :cond_52
    if-eqz v4, :cond_53

    .line 163
    invoke-interface {v4, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 164
    :cond_53
    invoke-interface {v0, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1e
    if-eqz v6, :cond_54

    .line 165
    invoke-virtual {v1, v14, v11, v7}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    .line 166
    :cond_54
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v6, 0xd

    if-ne v5, v6, :cond_57

    const/16 v6, 0x10

    .line 167
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    if-nez v13, :cond_55

    .line 168
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_55
    if-nez v13, :cond_56

    .line 169
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_56
    return-object v0

    :cond_57
    const/16 v6, 0x10

    if-ne v5, v6, :cond_58

    goto/16 :goto_21

    .line 170
    :cond_58
    :try_start_b
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    move/from16 v17, v11

    const/16 v5, 0x74

    if-ne v6, v5, :cond_5a

    .line 171
    iget-object v5, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    const-string v6, "true"

    iget v8, v3, Lcom/alibaba/fastjson/a/f;->e:I

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 172
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v5, v5, 0x3

    iput v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 173
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 174
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_5a
    const/16 v5, 0x66

    if-ne v6, v5, :cond_69

    .line 175
    iget-object v5, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    const-string v6, "false"

    iget v8, v3, Lcom/alibaba/fastjson/a/f;->e:I

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 176
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/2addr v5, v9

    iput v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 177
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 178
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_5b
    :goto_1f
    iget-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_5c

    const/16 v6, 0x7d

    if-eq v5, v6, :cond_5c

    .line 180
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->o()V

    .line 181
    iget-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    :cond_5c
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_5e

    .line 182
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 183
    iget v6, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v5, v6, :cond_5d

    const/16 v5, 0x1a

    goto :goto_20

    :cond_5d
    iget-object v6, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 184
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_20
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    :goto_21
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x10

    goto/16 :goto_27

    :cond_5e
    const/16 v4, 0x7d

    if-ne v5, v4, :cond_68

    .line 185
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 186
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v4, v5, :cond_5f

    const/16 v5, 0x1a

    goto :goto_22

    :cond_5f
    iget-object v5, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_22
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/4 v6, 0x0

    .line 188
    iput v6, v3, Lcom/alibaba/fastjson/a/f;->h:I

    const/16 v4, 0x2c

    if-ne v5, v4, :cond_61

    .line 189
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 190
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v4, v5, :cond_60

    const/16 v5, 0x1a

    goto :goto_23

    :cond_60
    iget-object v5, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 191
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_23
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v4, 0x10

    .line 192
    iput v4, v3, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_26

    :cond_61
    const/16 v4, 0x7d

    if-ne v5, v4, :cond_63

    .line 193
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 194
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v4, v5, :cond_62

    const/16 v5, 0x1a

    goto :goto_24

    :cond_62
    iget-object v5, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 195
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_24
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v4, 0xd

    .line 196
    iput v4, v3, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_26

    :cond_63
    const/16 v4, 0x5d

    if-ne v5, v4, :cond_65

    .line 197
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 198
    iget v5, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v4, v5, :cond_64

    const/16 v5, 0x1a

    goto :goto_25

    :cond_64
    iget-object v5, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 199
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_25
    iput-char v5, v3, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v4, 0xf

    .line 200
    iput v4, v3, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_26

    .line 201
    :cond_65
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    :goto_26
    if-nez v13, :cond_66

    .line 202
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    invoke-virtual {v1, v3, v0, v2}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_66
    if-nez v13, :cond_67

    .line 203
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_67
    return-object v0

    .line 204
    :cond_68
    :try_start_c
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 205
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v8

    .line 207
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v11, Lcom/alibaba/fastjson/JSONObject;

    if-ne v9, v11, :cond_6a

    .line 208
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 209
    :cond_6a
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget v7, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_6c

    const/16 v7, 0x10

    .line 211
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-nez v13, :cond_6b

    .line 212
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_6b
    return-object v0

    :cond_6c
    const/16 v7, 0x10

    .line 213
    :try_start_d
    iget v8, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v8, v7, :cond_6d

    :goto_27
    move/from16 v11, v17

    goto/16 :goto_e

    .line 214
    :cond_6d
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_6e
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_6f
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catchall_0
    move-exception v0

    if-nez v13, :cond_70

    .line 217
    iput-object v14, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_70
    goto :goto_29

    :goto_28
    throw v0

    :goto_29
    goto :goto_28
.end method

.method protected a(Lcom/alibaba/fastjson/a/c$a;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->m:Ljava/util/List;

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/alibaba/fastjson/a/m;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/a/f;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 455
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 10

    .line 325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v1

    .line 327
    instance-of v2, v1, Lcom/alibaba/fastjson/a/h;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 328
    check-cast v1, Lcom/alibaba/fastjson/a/h;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v2, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syntax error, expect {, actual "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v4, p0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xd

    if-nez v2, :cond_4

    .line 332
    iget-object v6, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v7, v6, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v7, v4, :cond_3

    .line 333
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-void

    :cond_3
    if-ne v7, v5, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 334
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v3

    :goto_2
    const/16 v7, 0x3a

    if-nez v6, :cond_7

    .line 335
    iget-object v6, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v8, v6, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v9, Lcom/alibaba/fastjson/a/e;->IgnoreNotMatch:Lcom/alibaba/fastjson/a/e;

    iget v9, v9, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_6

    .line 336
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    .line 338
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v6, v4, :cond_2

    .line 339
    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    return-void

    .line 340
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setter not found, class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", property "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 341
    :cond_7
    iget-object v2, v6, Lcom/alibaba/fastjson/a/a/d;->a:Lcom/alibaba/fastjson/e/a;

    iget-object v8, v2, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    .line 342
    iget-object v2, v2, Lcom/alibaba/fastjson/e/a;->l:Ljava/lang/reflect/Type;

    .line 343
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_8

    .line 344
    iget-object v8, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 345
    sget-object v7, Lcom/alibaba/fastjson/c/n;->a:Lcom/alibaba/fastjson/c/n;

    invoke-virtual {v7, p0, v2, v3}, Lcom/alibaba/fastjson/c/n;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 346
    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_9

    .line 347
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v2, v7}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 348
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->q()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 349
    :cond_9
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_a

    .line 350
    iget-object v8, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 351
    sget-object v7, Lcom/alibaba/fastjson/c/n;->a:Lcom/alibaba/fastjson/c/n;

    invoke-virtual {v7, p0, v2, v3}, Lcom/alibaba/fastjson/c/n;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    .line 352
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v9, v8, v2}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v8

    .line 353
    iget-object v9, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/a/f;->a(C)V

    .line 354
    invoke-interface {v8, p0, v2, v3}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 355
    :goto_3
    invoke-virtual {v6, p1, v2}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 356
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v6, v2, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v6, v5, :cond_b

    goto/16 :goto_1

    :cond_b
    if-ne v6, v4, :cond_2

    .line 357
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 7

    .line 235
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v0, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    .line 238
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    if-ne v1, p1, :cond_2

    .line 239
    sget-object v1, Lcom/alibaba/fastjson/c/n;->a:Lcom/alibaba/fastjson/c/n;

    const/4 v3, 0x2

    .line 240
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_0

    .line 241
    :cond_2
    const-class v1, Ljava/lang/String;

    if-ne v1, p1, :cond_3

    .line 242
    sget-object v1, Lcom/alibaba/fastjson/c/c;->a:Lcom/alibaba/fastjson/c/c;

    .line 243
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v1

    .line 245
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 247
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-boolean v3, v3, Lcom/alibaba/fastjson/a/f;->t:Z

    if-nez v3, :cond_4

    .line 248
    invoke-virtual {p0, v0, p2, p3}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    :cond_4
    const/4 p3, 0x0

    .line 249
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_5

    .line 250
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_1

    .line 251
    :cond_5
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0xf

    if-ne v3, v5, :cond_6

    .line 252
    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 253
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-void

    .line 254
    :cond_6
    :try_start_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    if-ne v3, p1, :cond_7

    .line 255
    sget-object v3, Lcom/alibaba/fastjson/c/n;->a:Lcom/alibaba/fastjson/c/n;

    invoke-virtual {v3, p0, v5, v5}, Lcom/alibaba/fastjson/c/n;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 256
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 257
    :cond_7
    const-class v3, Ljava/lang/String;

    if-ne v3, p1, :cond_a

    .line 258
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v3, v2, :cond_8

    .line 259
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v3

    .line 260
    iget-object v5, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_3

    .line 261
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 262
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    move-object v3, v5

    .line 263
    :goto_3
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 264
    :cond_a
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_b

    .line 265
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    goto :goto_4

    .line 266
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p0, p1, v3}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 267
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 268
    iget v3, p0, Lcom/alibaba/fastjson/a/c;->n:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_c

    .line 269
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    .line 270
    :cond_c
    :goto_5
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v3, v4, :cond_d

    .line 271
    iget-object v3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    .line 272
    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    throw p1

    .line 273
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exepct \'[\', but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget p3, p3, Lcom/alibaba/fastjson/a/f;->a:I

    invoke-static {p3}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method protected a(Ljava/util/Collection;)V
    .locals 4

    .line 358
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/c$a;

    move-result-object v0

    .line 360
    new-instance v2, Lcom/alibaba/fastjson/a/o;

    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v2, p0, v3, p1}, Lcom/alibaba/fastjson/a/o;-><init>(Lcom/alibaba/fastjson/a/c;Ljava/util/List;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/d;

    .line 361
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    iput-object p1, v0, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/m;

    .line 362
    iput v1, p0, Lcom/alibaba/fastjson/a/c;->n:I

    goto :goto_0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/c$a;

    move-result-object v0

    .line 364
    new-instance v2, Lcom/alibaba/fastjson/a/o;

    invoke-direct {v2, p1}, Lcom/alibaba/fastjson/a/o;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/d;

    .line 365
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    iput-object p1, v0, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/m;

    .line 366
    iput v1, p0, Lcom/alibaba/fastjson/a/c;->n:I

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 367
    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v2, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_0

    const/16 v3, 0x16

    if-ne v2, v3, :cond_1

    .line 368
    :cond_0
    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 369
    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v2, Lcom/alibaba/fastjson/a/f;->a:I

    :cond_1
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2a

    .line 370
    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/a/f;->t:Z

    .line 371
    iget-object v4, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    if-nez v2, :cond_2

    move-object/from16 v5, p2

    .line 372
    invoke-virtual {v1, v4, v0, v5}, Lcom/alibaba/fastjson/a/c;->a(Lcom/alibaba/fastjson/a/m;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/a/m;

    .line 373
    :cond_2
    :try_start_0
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-char v5, v5, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v6, 0x7b

    const/16 v7, 0x5d

    const/4 v9, 0x4

    const/16 v10, 0xc

    const/16 v12, 0x22

    const/16 v13, 0x10

    const/4 v14, 0x1

    if-eq v5, v12, :cond_7

    if-ne v5, v7, :cond_4

    .line 374
    iget-object v0, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->c()C

    .line 375
    iget-object v0, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 376
    iput-object v4, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_3
    return-void

    :cond_4
    if-ne v5, v6, :cond_6

    .line 377
    :try_start_1
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v15, v5, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/2addr v15, v14

    iput v15, v5, Lcom/alibaba/fastjson/a/f;->e:I

    .line 378
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v8, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v8, v8, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v15, v8, :cond_5

    const/16 v8, 0x1a

    goto :goto_0

    :cond_5
    iget-object v8, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v8, v8, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 379
    invoke-virtual {v8, v15}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_0
    iput-char v8, v5, Lcom/alibaba/fastjson/a/f;->d:C

    .line 380
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iput v10, v5, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_1

    .line 381
    :cond_6
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v5, v10}, Lcom/alibaba/fastjson/a/f;->b(I)V

    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    .line 382
    :cond_7
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v5, v5, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v8, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    iget v8, v8, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v5, v8

    if-nez v5, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    .line 383
    :cond_8
    iget-object v5, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_1

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v5, :cond_12

    .line 384
    iget-object v15, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-char v15, v15, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v15, v12, :cond_12

    .line 385
    iget-object v15, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v15, v12}, Lcom/alibaba/fastjson/a/f;->b(C)Ljava/lang/String;

    move-result-object v15

    .line 386
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-char v6, v6, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v11, 0x2c

    if-ne v6, v11, :cond_d

    .line 387
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v11, v6, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/2addr v11, v14

    iput v11, v6, Lcom/alibaba/fastjson/a/f;->e:I

    .line 388
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v11, v3, :cond_9

    const/16 v3, 0x1a

    goto :goto_4

    :cond_9
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v3, v3, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 389
    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    iput-char v3, v6, Lcom/alibaba/fastjson/a/f;->d:C

    .line 390
    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 391
    iget v6, v1, Lcom/alibaba/fastjson/a/c;->n:I

    if-ne v6, v14, :cond_a

    .line 392
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    :cond_a
    if-ne v3, v12, :cond_c

    const/4 v11, 0x0

    :cond_b
    :goto_5
    const/16 v15, 0x7b

    goto/16 :goto_e

    .line 393
    :cond_c
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    const/4 v5, 0x0

    goto :goto_7

    :cond_d
    if-ne v6, v7, :cond_11

    .line 394
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/2addr v5, v14

    iput v5, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 395
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v6, v6, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v5, v6, :cond_e

    const/16 v8, 0x1a

    goto :goto_6

    :cond_e
    iget-object v6, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v6, v6, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 396
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_6
    iput-char v8, v3, Lcom/alibaba/fastjson/a/f;->d:C

    .line 397
    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 398
    iget v3, v1, Lcom/alibaba/fastjson/a/c;->n:I

    if-ne v3, v14, :cond_f

    .line 399
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    .line 400
    :cond_f
    iget-object v0, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_10

    .line 401
    iput-object v4, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_10
    return-void

    .line 402
    :cond_11
    :try_start_2
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 403
    :cond_12
    :goto_7
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    :goto_8
    if-ne v3, v13, :cond_13

    .line 404
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 405
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_8

    :cond_13
    const/4 v6, 0x2

    const/4 v11, 0x0

    if-eq v3, v6, :cond_23

    const/4 v6, 0x3

    if-eq v3, v6, :cond_21

    if-eq v3, v9, :cond_1f

    const/4 v6, 0x6

    if-eq v3, v6, :cond_1e

    const/4 v6, 0x7

    if-eq v3, v6, :cond_1d

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1c

    if-eq v3, v10, :cond_1a

    const/16 v6, 0x14

    if-eq v3, v6, :cond_19

    const/16 v6, 0x17

    if-eq v3, v6, :cond_18

    const/16 v6, 0xe

    if-eq v3, v6, :cond_17

    const/16 v11, 0xf

    if-eq v3, v11, :cond_15

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v11

    :cond_14
    :goto_9
    move-object v3, v11

    const/4 v11, 0x0

    goto/16 :goto_c

    .line 407
    :cond_15
    iget-object v0, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_16

    .line 408
    iput-object v4, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_16
    return-void

    .line 409
    :cond_17
    :try_start_3
    new-instance v11, Lcom/alibaba/fastjson/b;

    invoke-direct {v11}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 410
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v11, v3}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    const/16 v6, 0xe

    .line 411
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_9

    .line 412
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/f;

    const-string v3, "unclosed jsonArray"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/16 v6, 0xe

    .line 413
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v11, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    iget v11, v11, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_1b

    .line 414
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_a

    .line 415
    :cond_1b
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 416
    :goto_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_9

    :cond_1c
    const/16 v6, 0xe

    .line 417
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_9

    :cond_1d
    const/16 v6, 0xe

    .line 418
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 419
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_9

    :cond_1e
    const/16 v6, 0xe

    .line 420
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 421
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_9

    :cond_1f
    const/16 v6, 0xe

    .line 422
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v11

    .line 423
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 424
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v15, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    iget v15, v15, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v3, v15

    if-eqz v3, :cond_14

    .line 425
    new-instance v3, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/a/f;->b(Z)Z

    move-result v15

    if-eqz v15, :cond_20

    .line 427
    iget-object v11, v3, Lcom/alibaba/fastjson/a/f;->o:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    .line 428
    :cond_20
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->b()V

    goto/16 :goto_9

    :cond_21
    const/16 v6, 0xe

    .line 429
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v11, Lcom/alibaba/fastjson/a/e;->UseBigDecimal:Lcom/alibaba/fastjson/a/e;

    iget v11, v11, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v3, v11

    if-eqz v3, :cond_22

    .line 430
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3, v14}, Lcom/alibaba/fastjson/a/f;->a(Z)Ljava/lang/Number;

    move-result-object v3

    const/4 v11, 0x0

    goto :goto_b

    .line 431
    :cond_22
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/a/f;->a(Z)Ljava/lang/Number;

    move-result-object v3

    .line 432
    :goto_b
    iget-object v15, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_c

    :cond_23
    const/16 v6, 0xe

    const/4 v11, 0x0

    .line 433
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->g()Ljava/lang/Number;

    move-result-object v3

    .line 434
    iget-object v15, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v15, v13}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 435
    :goto_c
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 436
    iget v3, v1, Lcom/alibaba/fastjson/a/c;->n:I

    if-ne v3, v14, :cond_24

    .line 437
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;)V

    .line 438
    :cond_24
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v3, v13, :cond_b

    .line 439
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-char v3, v3, Lcom/alibaba/fastjson/a/f;->d:C

    if-ne v3, v12, :cond_25

    .line 440
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v15, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v15, v15, Lcom/alibaba/fastjson/a/f;->e:I

    iput v15, v3, Lcom/alibaba/fastjson/a/f;->b:I

    .line 441
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->j()V

    goto/16 :goto_5

    :cond_25
    const/16 v15, 0x30

    if-lt v3, v15, :cond_26

    const/16 v15, 0x39

    if-gt v3, v15, :cond_26

    .line 442
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v15, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v15, v15, Lcom/alibaba/fastjson/a/f;->e:I

    iput v15, v3, Lcom/alibaba/fastjson/a/f;->b:I

    .line 443
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->p()V

    goto/16 :goto_5

    :cond_26
    const/16 v15, 0x7b

    if-ne v3, v15, :cond_28

    .line 444
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iput v10, v3, Lcom/alibaba/fastjson/a/f;->a:I

    .line 445
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v6, v3, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/2addr v6, v14

    iput v6, v3, Lcom/alibaba/fastjson/a/f;->e:I

    .line 446
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v7, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v7, v7, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v6, v7, :cond_27

    const/16 v6, 0x1a

    goto :goto_d

    :cond_27
    iget-object v7, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v7, v7, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 447
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_d
    iput-char v6, v3, Lcom/alibaba/fastjson/a/f;->d:C

    goto :goto_e

    .line 448
    :cond_28
    iget-object v3, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_e
    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0xe

    const/16 v6, 0x7b

    const/16 v7, 0x5d

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-nez v2, :cond_29

    .line 449
    iput-object v4, v1, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    :cond_29
    throw v0

    .line 450
    :cond_2a
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, expect [, actual "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pos "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v2, Lcom/alibaba/fastjson/a/f;->b:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method

.method public a([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 274
    iget-object v2, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v3, v2, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/16 v6, 0x10

    if-ne v3, v4, :cond_0

    .line 275
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object v5

    :cond_0
    const/16 v7, 0xe

    const-string v8, "syntax error, "

    if-ne v3, v7, :cond_13

    .line 276
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 277
    array-length v9, v1

    const/4 v10, 0x0

    const/16 v11, 0xf

    if-nez v9, :cond_2

    .line 278
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 279
    iget-object v1, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v1, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v2, v11, :cond_1

    .line 280
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    new-array v1, v10, [Ljava/lang/Object;

    return-object v1

    .line 281
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v9, 0x2

    .line 282
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/4 v2, 0x0

    .line 283
    :goto_0
    array-length v12, v1

    if-ge v2, v12, :cond_11

    .line 284
    iget-object v12, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v13, v12, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v13, v4, :cond_3

    .line 285
    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    move-object v4, v5

    goto/16 :goto_6

    .line 286
    :cond_3
    aget-object v14, v1, v2

    .line 287
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_c

    const-class v15, Ljava/lang/Integer;

    if-ne v14, v15, :cond_4

    goto/16 :goto_5

    .line 288
    :cond_4
    const-class v15, Ljava/lang/String;

    if-ne v14, v15, :cond_6

    const/4 v15, 0x4

    if-ne v13, v15, :cond_5

    .line 289
    invoke-virtual {v12}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v12

    .line 290
    iget-object v13, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v13, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v12

    .line 292
    iget-object v13, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-static {v12, v14, v13}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v12

    :goto_1
    move-object v4, v12

    goto/16 :goto_6

    .line 293
    :cond_6
    array-length v12, v1

    add-int/lit8 v12, v12, -0x1

    if-ne v2, v12, :cond_7

    .line 294
    instance-of v12, v14, Ljava/lang/Class;

    if-eqz v12, :cond_7

    .line 295
    move-object v12, v14

    check-cast v12, Ljava/lang/Class;

    .line 296
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v13

    .line 297
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    goto :goto_2

    :cond_7
    move-object v12, v5

    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_b

    .line 298
    iget-object v13, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v13, v13, Lcom/alibaba/fastjson/a/f;->a:I

    if-eq v13, v7, :cond_b

    .line 299
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 300
    iget-object v15, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v15, v12}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v12

    .line 301
    iget-object v15, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v15, v15, Lcom/alibaba/fastjson/a/f;->a:I

    if-eq v15, v11, :cond_a

    .line 302
    :goto_3
    invoke-interface {v12, v0, v14, v5}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 303
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v15, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v4, v15, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v4, v6, :cond_8

    const/16 v4, 0xc

    .line 305
    invoke-virtual {v15, v4}, Lcom/alibaba/fastjson/a/f;->b(I)V

    const/16 v4, 0x8

    goto :goto_3

    :cond_8
    if-ne v4, v11, :cond_9

    goto :goto_4

    .line 306
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_a
    :goto_4
    iget-object v4, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-static {v13, v14, v4}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 308
    :cond_b
    iget-object v4, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v4

    .line 309
    invoke-interface {v4, v0, v14, v5}, Lcom/alibaba/fastjson/a/a/f;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_6

    .line 310
    :cond_c
    :goto_5
    iget-object v4, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v12, v4, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v12, v9, :cond_d

    .line 311
    invoke-virtual {v4}, Lcom/alibaba/fastjson/a/f;->k()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 312
    iget-object v12, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_6

    .line 313
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v4

    .line 314
    iget-object v12, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-static {v4, v14, v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/a/n;)Ljava/lang/Object;

    move-result-object v4

    .line 315
    :goto_6
    aput-object v4, v3, v2

    .line 316
    iget-object v4, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v12, v4, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v12, v11, :cond_e

    goto :goto_8

    :cond_e
    if-ne v12, v6, :cond_10

    .line 317
    array-length v12, v1

    add-int/lit8 v12, v12, -0x1

    if-ne v2, v12, :cond_f

    .line 318
    invoke-virtual {v4, v11}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_7

    .line 319
    :cond_f
    invoke-virtual {v4, v9}, Lcom/alibaba/fastjson/a/f;->b(I)V

    :goto_7
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x8

    goto/16 :goto_0

    .line 320
    :cond_10
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_11
    :goto_8
    iget-object v1, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v1, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v2, v11, :cond_12

    .line 322
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object v3

    .line 323
    :cond_12
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    const/16 v5, 0x10

    if-eq v1, v3, :cond_5

    const/16 v3, 0xc

    if-eq v1, v3, :cond_3

    const/16 v3, 0xe

    if-eq v1, v3, :cond_2

    const/4 v3, 0x0

    const-string v4, "syntax error, "

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 8
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :pswitch_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 10
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 12
    :pswitch_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 15
    :pswitch_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v3

    .line 16
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    const/16 p1, 0x12

    .line 17
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v1, p1, :cond_1

    const/16 p1, 0xa

    .line 19
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 21
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/f;->g()Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 22
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/a/c;->c(I)V

    const/16 p1, 0xb

    .line 23
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/a/c;->c(I)V

    .line 24
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 25
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object v3

    .line 27
    :pswitch_5
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 28
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 29
    :pswitch_6
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 30
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 31
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/b;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b;-><init>()V

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0

    .line 33
    :cond_3
    iget v0, v0, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v1, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    iget v1, v1, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 34
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/a/f;->b(I)V

    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v0, v0, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v1, Lcom/alibaba/fastjson/a/e;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/a/e;

    iget v1, v1, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 38
    new-instance v0, Lcom/alibaba/fastjson/a/f;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/a/f;-><init>(Ljava/lang/String;)V

    .line 39
    :try_start_0
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/a/f;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 40
    iget-object p1, v0, Lcom/alibaba/fastjson/a/f;->o:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    return-object p1

    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    throw p1

    :cond_7
    :goto_1
    return-object p1

    .line 42
    :cond_8
    iget p1, v0, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v0, Lcom/alibaba/fastjson/a/e;->UseBigDecimal:Lcom/alibaba/fastjson/a/e;

    iget v0, v0, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    const/4 v4, 0x0

    .line 43
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/a/f;->a(Z)Ljava/lang/Number;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object p1

    .line 45
    :cond_a
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->g()Ljava/lang/Number;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method protected b(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/a/o;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/a/o;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/c$a;

    move-result-object p1

    .line 3
    iput-object v0, p1, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/d;

    .line 4
    iget-object p2, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    iput-object p2, p1, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/m;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/alibaba/fastjson/a/c;->n:I

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v1, p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->e()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", actual "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget p1, p1, Lcom/alibaba/fastjson/a/f;->a:I

    .line 4
    invoke-static {p1}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 8

    .line 5
    iget-object p1, p0, Lcom/alibaba/fastjson/a/c;->m:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_6

    .line 7
    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/a/c$a;

    .line 8
    iget-object v3, v2, Lcom/alibaba/fastjson/a/c$a;->c:Lcom/alibaba/fastjson/a/a/d;

    if-nez v3, :cond_1

    goto :goto_3

    .line 9
    :cond_1
    iget-object v4, v2, Lcom/alibaba/fastjson/a/c$a;->d:Lcom/alibaba/fastjson/a/m;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, v4, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 11
    :goto_1
    invoke-static {v2}, Lcom/alibaba/fastjson/a/c$a;->a(Lcom/alibaba/fastjson/a/c$a;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "$"

    .line 12
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x0

    .line 13
    :goto_2
    iget v7, p0, Lcom/alibaba/fastjson/a/c;->l:I

    if-ge v2, v7, :cond_5

    .line 14
    iget-object v7, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/alibaba/fastjson/a/m;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    iget-object v5, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v2}, Lcom/alibaba/fastjson/a/c$a;->b(Lcom/alibaba/fastjson/a/c$a;)Lcom/alibaba/fastjson/a/m;

    move-result-object v2

    iget-object v5, v2, Lcom/alibaba/fastjson/a/m;->a:Ljava/lang/Object;

    .line 17
    :cond_5
    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v0, v0, Lcom/alibaba/fastjson/a/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->b()V

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alibaba/fastjson/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not close json text, token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v2, v2, Lcom/alibaba/fastjson/a/f;->a:I

    invoke-static {v2}, Lcom/alibaba/fastjson/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->b()V

    throw v0
.end method

.method public i()Ljava/text/DateFormat;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->h:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v2, v2, Lcom/alibaba/fastjson/a/f;->n:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->h:Ljava/text/DateFormat;

    .line 3
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->h:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-object v1, v1, Lcom/alibaba/fastjson/a/f;->m:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->h:Ljava/text/DateFormat;

    return-object v0
.end method

.method public j()Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v0, v0, Lcom/alibaba/fastjson/a/f;->c:I

    sget-object v1, Lcom/alibaba/fastjson/a/e;->OrderedField:Lcom/alibaba/fastjson/a/e;

    iget v1, v1, Lcom/alibaba/fastjson/a/e;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/a/c;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method protected k()Lcom/alibaba/fastjson/a/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/a/c$a;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/a/a/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->p:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->p:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->p:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/a/a/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->o:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->o:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->o:Ljava/util/List;

    return-object v0
.end method

.method protected o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    iget-object v0, v0, Lcom/alibaba/fastjson/a/m;->b:Lcom/alibaba/fastjson/a/m;

    iput-object v0, p0, Lcom/alibaba/fastjson/a/c;->j:Lcom/alibaba/fastjson/a/m;

    .line 2
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->k:[Lcom/alibaba/fastjson/a/m;

    iget v1, p0, Lcom/alibaba/fastjson/a/c;->l:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Lcom/alibaba/fastjson/a/c;->l:I

    return-void
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget v1, v0, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iget-char v3, v1, Lcom/alibaba/fastjson/a/f;->d:C

    const/16 v4, 0x2c

    const/16 v5, 0x1a

    if-ne v3, v4, :cond_1

    .line 4
    iget v3, v1, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/alibaba/fastjson/a/f;->e:I

    .line 5
    iget v4, v1, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 6
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_0
    iput-char v5, v1, Lcom/alibaba/fastjson/a/f;->d:C

    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    iput v2, v1, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_3

    :cond_1
    const/16 v2, 0x5d

    if-ne v3, v2, :cond_3

    .line 8
    iget v2, v1, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/fastjson/a/f;->e:I

    .line 9
    iget v3, v1, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v1, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_1
    iput-char v5, v1, Lcom/alibaba/fastjson/a/f;->d:C

    .line 11
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    const/16 v2, 0xf

    iput v2, v1, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_3

    :cond_3
    const/16 v2, 0x7d

    if-ne v3, v2, :cond_5

    .line 12
    iget v2, v1, Lcom/alibaba/fastjson/a/f;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/alibaba/fastjson/a/f;->e:I

    .line 13
    iget v3, v1, Lcom/alibaba/fastjson/a/f;->r:I

    if-lt v2, v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/alibaba/fastjson/a/f;->q:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    iput-char v5, v1, Lcom/alibaba/fastjson/a/f;->d:C

    .line 15
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    const/16 v2, 0xd

    iput v2, v1, Lcom/alibaba/fastjson/a/f;->a:I

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/f;->e()V

    :goto_3
    return-object v0

    :cond_6
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 17
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a/f;->d()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/a/f;->b(I)V

    return-object v0

    .line 19
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 20
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
