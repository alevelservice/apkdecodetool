.class public Lcom/alibaba/fastjson/a/q;
.super Lcom/alibaba/fastjson/a/h;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/a/n;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/a/h;-><init>(Lcom/alibaba/fastjson/a/n;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/alibaba/fastjson/a/c;->i:Lcom/alibaba/fastjson/a/f;

    .line 2
    iget v4, v3, Lcom/alibaba/fastjson/a/f;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    return-object v6

    .line 4
    :cond_0
    iget v7, v0, Lcom/alibaba/fastjson/a/c;->n:I

    const-string v8, "syntax error"

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-ne v7, v9, :cond_1

    .line 5
    iput v10, v0, Lcom/alibaba/fastjson/a/c;->n:I

    goto :goto_0

    :cond_1
    const/16 v7, 0xc

    if-ne v4, v7, :cond_1c

    :goto_0
    if-eqz v2, :cond_2

    .line 6
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_2

    .line 7
    check-cast v2, Ljava/lang/Class;

    .line 8
    const-class v4, Ljava/lang/Throwable;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v6

    :goto_1
    move-object v7, v2

    move-object v2, v6

    move-object v4, v2

    move-object v11, v4

    move-object v12, v11

    .line 9
    :goto_2
    iget-object v13, v0, Lcom/alibaba/fastjson/a/c;->e:Lcom/alibaba/fastjson/a/p;

    invoke-virtual {v3, v13}, Lcom/alibaba/fastjson/a/f;->a(Lcom/alibaba/fastjson/a/p;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xd

    const/16 v15, 0x10

    if-nez v13, :cond_4

    .line 10
    iget v9, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v9, v14, :cond_3

    .line 11
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto/16 :goto_5

    :cond_3
    if-ne v9, v15, :cond_4

    const/4 v9, 0x2

    goto :goto_2

    :cond_4
    const/16 v9, 0x3a

    .line 12
    invoke-virtual {v3, v9}, Lcom/alibaba/fastjson/a/f;->a(C)V

    const-string v9, "@type"

    .line 13
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_6

    .line 14
    iget v7, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v7, v10, :cond_5

    .line 15
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v7

    .line 16
    iget-object v9, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    iget-object v9, v9, Lcom/alibaba/fastjson/a/n;->c:Ljava/lang/ClassLoader;

    invoke-static {v7, v9}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    .line 17
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/a/f;->b(I)V

    goto :goto_4

    .line 18
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v9, "message"

    .line 19
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 20
    iget v9, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v9, v5, :cond_7

    move-object v9, v6

    goto :goto_3

    :cond_7
    if-ne v9, v10, :cond_8

    .line 21
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->m()Ljava/lang/String;

    move-result-object v9

    .line 22
    :goto_3
    invoke-virtual {v3}, Lcom/alibaba/fastjson/a/f;->e()V

    move-object v11, v9

    goto :goto_4

    .line 23
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v9, "cause"

    .line 24
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 25
    invoke-virtual {v1, v0, v6, v9}, Lcom/alibaba/fastjson/a/q;->a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    goto :goto_4

    :cond_a
    const-string v9, "stackTrace"

    .line 26
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 27
    const-class v9, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/StackTraceElement;

    move-object v12, v9

    goto :goto_4

    :cond_b
    if-nez v2, :cond_c

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/a/c;->p()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_4
    iget v9, v3, Lcom/alibaba/fastjson/a/f;->a:I

    if-ne v9, v14, :cond_1b

    .line 31
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/a/f;->b(I)V

    :goto_5
    if-nez v7, :cond_d

    .line 32
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v11, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 33
    :cond_d
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v5, v3

    move-object v9, v6

    move-object v10, v9

    move-object v13, v10

    const/4 v8, 0x0

    :goto_6
    const/4 v14, 0x1

    if-ge v8, v5, :cond_11

    aget-object v15, v3, v8

    .line 34
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-nez v6, :cond_e

    move-object v13, v15

    goto :goto_7

    .line 35
    :cond_e
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v14, :cond_f

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/16 v16, 0x0

    aget-object v6, v6, v16

    const-class v14, Ljava/lang/String;

    if-ne v6, v14, :cond_f

    move-object v10, v15

    goto :goto_7

    .line 36
    :cond_f
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    const/4 v14, 0x2

    if-ne v6, v14, :cond_10

    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v14, 0x0

    aget-object v6, v6, v14

    const-class v14, Ljava/lang/String;

    if-ne v6, v14, :cond_10

    .line 37
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    const/4 v14, 0x1

    aget-object v6, v6, v14

    const-class v14, Ljava/lang/Throwable;

    if-ne v6, v14, :cond_10

    move-object v9, v15

    :cond_10
    :goto_7
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_11
    if-eqz v9, :cond_12

    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 38
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    goto :goto_8

    :cond_12
    if-eqz v10, :cond_13

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v3, v5

    .line 39
    invoke-virtual {v10, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    goto :goto_8

    :cond_13
    if-eqz v13, :cond_14

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v13, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    goto :goto_8

    :cond_14
    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_15

    .line 41
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v11, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :cond_15
    move-object v3, v6

    :goto_9
    if-eqz v12, :cond_16

    .line 42
    invoke-virtual {v3, v12}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_16
    if-eqz v2, :cond_1a

    if-eqz v7, :cond_18

    .line 43
    iget-object v4, v1, Lcom/alibaba/fastjson/a/h;->d:Ljava/lang/Class;

    if-ne v7, v4, :cond_17

    move-object v0, v1

    goto :goto_a

    .line 44
    :cond_17
    iget-object v0, v0, Lcom/alibaba/fastjson/a/c;->f:Lcom/alibaba/fastjson/a/n;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/a/n;->a(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/a/a/f;

    move-result-object v0

    .line 45
    instance-of v4, v0, Lcom/alibaba/fastjson/a/h;

    if-eqz v4, :cond_18

    .line 46
    check-cast v0, Lcom/alibaba/fastjson/a/h;

    goto :goto_a

    :cond_18
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1a

    .line 47
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 49
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 50
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/a/h;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/a/a/d;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 51
    invoke-virtual {v5, v3, v4}, Lcom/alibaba/fastjson/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_1a
    return-object v3

    :catch_0
    move-exception v0

    .line 52
    new-instance v2, Lcom/alibaba/fastjson/f;

    const-string v3, "create instance error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1b
    const/4 v9, 0x2

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 53
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/f;

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
