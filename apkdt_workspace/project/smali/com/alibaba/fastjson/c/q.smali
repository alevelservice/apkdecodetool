.class public Lcom/alibaba/fastjson/c/q;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/c/w;


# static fields
.field private static final f:[C

.field private static final g:[C


# instance fields
.field private final a:[Lcom/alibaba/fastjson/c/m;

.field private final b:[Lcom/alibaba/fastjson/c/m;

.field protected c:I

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson/c/q;->f:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/fastjson/c/q;->g:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/h;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/h;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lcom/alibaba/fastjson/c/q;->c:I

    const/4 v2, 0x0

    if-eqz p5, :cond_0

    .line 4
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v13, p1

    .line 5
    invoke-virtual {v13, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONType;

    goto :goto_0

    :cond_0
    move-object/from16 v13, p1

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_9

    .line 6
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/c/b;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/c/b;->of([Lcom/alibaba/fastjson/c/b;)I

    move-result v4

    iput v4, v0, Lcom/alibaba/fastjson/c/q;->c:I

    .line 7
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v4, v2

    move-object v8, v4

    goto :goto_5

    .line 9
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object v6, v2

    :goto_1
    if-eqz v5, :cond_4

    .line 10
    const-class v7, Ljava/lang/Object;

    if-eq v5, v7, :cond_4

    .line 11
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v7, :cond_2

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_1

    .line 15
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    move-object v8, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v9, v5, v6

    .line 16
    const-class v10, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONType;

    if-eqz v9, :cond_5

    .line 17
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object v8

    .line 18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v8, :cond_7

    .line 19
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    move-object v8, v2

    :cond_7
    :goto_5
    if-nez p8, :cond_8

    .line 20
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->naming()Lcom/alibaba/fastjson/h;

    move-result-object v5

    .line 21
    sget-object v6, Lcom/alibaba/fastjson/h;->CamelCase:Lcom/alibaba/fastjson/h;

    if-eq v5, v6, :cond_8

    move-object v14, v5

    goto :goto_6

    :cond_8
    move-object/from16 v14, p8

    goto :goto_6

    :cond_9
    move-object/from16 v14, p8

    move-object v4, v2

    move-object v8, v4

    .line 22
    :goto_6
    iput-object v4, v0, Lcom/alibaba/fastjson/c/q;->d:Ljava/lang/String;

    .line 23
    iput-object v8, v0, Lcom/alibaba/fastjson/c/q;->e:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move-object v12, v14

    .line 24
    invoke-static/range {v4 .. v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/h;)Ljava/util/List;

    move-result-object v4

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson/e/a;

    .line 27
    new-instance v7, Lcom/alibaba/fastjson/c/m;

    invoke-direct {v7, v6}, Lcom/alibaba/fastjson/c/m;-><init>(Lcom/alibaba/fastjson/e/a;)V

    .line 28
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 29
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/fastjson/c/m;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/alibaba/fastjson/c/m;

    iput-object v4, v0, Lcom/alibaba/fastjson/c/q;->a:[Lcom/alibaba/fastjson/c/m;

    if-eqz v3, :cond_b

    .line 30
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v2

    :cond_b
    if-eqz v2, :cond_d

    .line 31
    array-length v2, v2

    if-eqz v2, :cond_d

    const/4 v9, 0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    move-object v7, v3

    move-object/from16 v8, p3

    move/from16 v10, p6

    move/from16 v11, p7

    move-object v12, v14

    .line 32
    invoke-static/range {v4 .. v12}, Lcom/alibaba/fastjson/e/d;->a(Ljava/lang/Class;IZLcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;ZZZLcom/alibaba/fastjson/h;)Ljava/util/List;

    move-result-object v1

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/e/a;

    .line 35
    new-instance v4, Lcom/alibaba/fastjson/c/m;

    invoke-direct {v4, v3}, Lcom/alibaba/fastjson/c/m;-><init>(Lcom/alibaba/fastjson/e/a;)V

    .line 36
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 37
    :cond_c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/fastjson/c/m;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/fastjson/c/m;

    iput-object v1, v0, Lcom/alibaba/fastjson/c/q;->b:[Lcom/alibaba/fastjson/c/m;

    goto :goto_9

    .line 38
    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/c/q;->a:[Lcom/alibaba/fastjson/c/m;

    array-length v3, v2

    new-array v3, v3, [Lcom/alibaba/fastjson/c/m;

    .line 39
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 41
    iget-object v1, v0, Lcom/alibaba/fastjson/c/q;->a:[Lcom/alibaba/fastjson/c/m;

    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 42
    iget-object v1, v0, Lcom/alibaba/fastjson/c/q;->a:[Lcom/alibaba/fastjson/c/m;

    iput-object v1, v0, Lcom/alibaba/fastjson/c/q;->b:[Lcom/alibaba/fastjson/c/m;

    goto :goto_9

    .line 43
    :cond_e
    iput-object v3, v0, Lcom/alibaba/fastjson/c/q;->b:[Lcom/alibaba/fastjson/c/m;

    :goto_9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/h;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/c/q;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/h;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/c/q;->b:[Lcom/alibaba/fastjson/c/m;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 197
    iget-object v1, p0, Lcom/alibaba/fastjson/c/q;->b:[Lcom/alibaba/fastjson/c/m;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 198
    iget-object v5, v4, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    iget-object v5, v5, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/c/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 1
    iget-object v6, v2, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->i()V

    return-void

    .line 3
    :cond_0
    iget-object v7, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    if-eqz v7, :cond_1

    iget v7, v7, Lcom/alibaba/fastjson/c/z;->d:I

    sget-object v8, Lcom/alibaba/fastjson/c/b;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/c/b;

    iget v8, v8, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    :cond_1
    iget-object v7, v2, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    if-eqz v7, :cond_2

    .line 4
    invoke-virtual {v7, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/c/p;->a(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_2
    iget v7, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v8, Lcom/alibaba/fastjson/c/b;->SortField:Lcom/alibaba/fastjson/c/b;

    iget v8, v8, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 7
    iget-object v7, v1, Lcom/alibaba/fastjson/c/q;->b:[Lcom/alibaba/fastjson/c/m;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v7, v1, Lcom/alibaba/fastjson/c/q;->a:[Lcom/alibaba/fastjson/c/m;

    .line 9
    :goto_0
    iget-object v8, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    .line 10
    iget v9, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v10, Lcom/alibaba/fastjson/c/b;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/c/b;

    iget v10, v10, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v9, v10

    if-nez v9, :cond_5

    .line 11
    new-instance v9, Lcom/alibaba/fastjson/c/z;

    iget v10, v1, Lcom/alibaba/fastjson/c/q;->c:I

    invoke-direct {v9, v8, v3, v4, v10}, Lcom/alibaba/fastjson/c/z;-><init>(Lcom/alibaba/fastjson/c/z;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    .line 12
    iget-object v9, v2, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    if-nez v9, :cond_4

    .line 13
    new-instance v9, Ljava/util/IdentityHashMap;

    invoke-direct {v9}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v9, v2, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    .line 14
    :cond_4
    iget-object v9, v2, Lcom/alibaba/fastjson/c/p;->l:Ljava/util/IdentityHashMap;

    iget-object v10, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    invoke-virtual {v9, v3, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_5
    iget v9, v1, Lcom/alibaba/fastjson/c/q;->c:I

    sget-object v10, Lcom/alibaba/fastjson/c/b;->BeanToArray:Lcom/alibaba/fastjson/c/b;

    iget v10, v10, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v9, v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v9, :cond_7

    iget v9, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_8

    const/16 v10, 0x5b

    goto :goto_3

    :cond_8
    const/16 v10, 0x7b

    :goto_3
    if-eqz v9, :cond_9

    const/16 v13, 0x5d

    goto :goto_4

    :cond_9
    const/16 v13, 0x7d

    .line 16
    :goto_4
    :try_start_0
    iget v14, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    add-int/2addr v14, v12

    .line 17
    iget-object v15, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v15, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-le v14, v15, :cond_b

    .line 18
    :try_start_1
    iget-object v15, v6, Lcom/alibaba/fastjson/c/c0;->h:Ljava/io/Writer;

    if-nez v15, :cond_a

    .line 19
    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/c/c0;->c(I)V

    goto :goto_5

    .line 20
    :cond_a
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v14, 0x1

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v3, v8

    goto/16 :goto_3a

    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v3, v8

    goto/16 :goto_39

    .line 21
    :cond_b
    :goto_5
    :try_start_2
    iget-object v15, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    iget v12, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    aput-char v10, v15, v12

    .line 22
    iput v14, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    .line 23
    array-length v10, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-lez v10, :cond_c

    :try_start_3
    iget v10, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v12, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    iget v12, v12, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_c

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/c/p;->c()V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/c/p;->e()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :cond_c
    :try_start_4
    iget v10, v1, Lcom/alibaba/fastjson/c/q;->c:I

    sget-object v12, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v12, v12, Lcom/alibaba/fastjson/c/b;->mask:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    and-int/2addr v10, v12

    if-nez v10, :cond_e

    :try_start_5
    iget v10, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v12, Lcom/alibaba/fastjson/c/b;->WriteClassName:Lcom/alibaba/fastjson/c/b;

    iget v12, v12, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_d

    if-nez v5, :cond_e

    iget v10, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v12, Lcom/alibaba/fastjson/c/b;->NotWriteRootClassName:Lcom/alibaba/fastjson/c/b;

    iget v12, v12, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_e

    iget-object v10, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    if-eqz v10, :cond_d

    iget-object v10, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    iget-object v10, v10, Lcom/alibaba/fastjson/c/z;->a:Lcom/alibaba/fastjson/c/z;

    if-eqz v10, :cond_d

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v10, 0x1

    :goto_7
    if-eqz v10, :cond_11

    .line 27
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq v10, v5, :cond_11

    .line 28
    iget-object v5, v1, Lcom/alibaba/fastjson/c/q;->e:Ljava/lang/String;

    if-eqz v5, :cond_f

    iget-object v5, v1, Lcom/alibaba/fastjson/c/q;->e:Ljava/lang/String;

    goto :goto_8

    :cond_f
    iget-object v5, v2, Lcom/alibaba/fastjson/c/p;->a:Lcom/alibaba/fastjson/c/a0;

    iget-object v5, v5, Lcom/alibaba/fastjson/c/a0;->b:Ljava/lang/String;

    :goto_8
    invoke-virtual {v6, v5, v11}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    .line 29
    iget-object v5, v1, Lcom/alibaba/fastjson/c/q;->d:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 30
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 31
    :cond_10
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v5, 0x1

    goto :goto_9

    :cond_11
    const/4 v5, 0x0

    :goto_9
    const/16 v10, 0x2c

    if-eqz v5, :cond_12

    const/16 v5, 0x2c

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    .line 32
    :goto_a
    :try_start_6
    iget-object v12, v2, Lcom/alibaba/fastjson/c/p;->c:Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v12, :cond_13

    .line 33
    :try_start_7
    iget-object v12, v2, Lcom/alibaba/fastjson/c/p;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/c/g;

    .line 34
    invoke-virtual {v14, v2, v3, v5}, Lcom/alibaba/fastjson/c/g;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;C)C

    move-result v5
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_b

    :cond_13
    if-ne v5, v10, :cond_14

    const/4 v5, 0x1

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    .line 35
    :goto_c
    :try_start_8
    iget v12, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v14, Lcom/alibaba/fastjson/c/b;->QuoteFieldNames:Lcom/alibaba/fastjson/c/b;

    iget v14, v14, Lcom/alibaba/fastjson/c/b;->mask:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    and-int/2addr v12, v14

    if-eqz v12, :cond_15

    :try_start_9
    iget v12, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v14, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v14, v14, Lcom/alibaba/fastjson/c/b;->mask:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    and-int/2addr v12, v14

    if-nez v12, :cond_15

    const/4 v12, 0x1

    goto :goto_d

    :cond_15
    const/4 v12, 0x0

    .line 36
    :goto_d
    :try_start_a
    iget v14, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v15, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v15, v15, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v14, v15

    if-eqz v14, :cond_16

    const/4 v14, 0x1

    goto :goto_e

    :cond_16
    const/4 v14, 0x0

    .line 37
    :goto_e
    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v10, Lcom/alibaba/fastjson/c/b;->NotWriteDefaultValue:Lcom/alibaba/fastjson/c/b;

    iget v10, v10, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v10, v15

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    goto :goto_f

    :cond_17
    const/4 v10, 0x0

    .line 38
    :goto_f
    iget-object v15, v2, Lcom/alibaba/fastjson/c/p;->e:Ljava/util/List;

    .line 39
    iget-object v11, v2, Lcom/alibaba/fastjson/c/p;->g:Ljava/util/List;

    move/from16 v16, v5

    .line 40
    iget-object v5, v2, Lcom/alibaba/fastjson/c/p;->f:Ljava/util/List;

    .line 41
    iget-object v4, v2, Lcom/alibaba/fastjson/c/p;->h:Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v17, v8

    move/from16 v18, v13

    const/4 v8, 0x0

    .line 42
    :goto_10
    :try_start_b
    array-length v13, v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-ge v8, v13, :cond_68

    .line 43
    :try_start_c
    aget-object v13, v7, v8

    move-object/from16 v19, v7

    .line 44
    iget-object v7, v13, Lcom/alibaba/fastjson/c/m;->e:Lcom/alibaba/fastjson/e/a;

    move/from16 v20, v8

    .line 45
    iget-object v8, v7, Lcom/alibaba/fastjson/e/a;->k:Ljava/lang/Class;

    move/from16 v21, v14

    .line 46
    iget-object v14, v7, Lcom/alibaba/fastjson/e/a;->e:Ljava/lang/String;

    move/from16 v22, v12

    .line 47
    iget v12, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    move/from16 v23, v10

    sget-object v10, Lcom/alibaba/fastjson/c/b;->SkipTransientField:Lcom/alibaba/fastjson/c/b;

    iget v10, v10, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_18

    .line 48
    iget-object v10, v7, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    if-eqz v10, :cond_18

    .line 49
    iget-boolean v10, v7, Lcom/alibaba/fastjson/e/a;->i:Z

    if-eqz v10, :cond_18

    goto :goto_12

    .line 50
    :cond_18
    iget-object v10, v1, Lcom/alibaba/fastjson/c/q;->e:Ljava/lang/String;

    if-eqz v10, :cond_19

    iget-object v10, v1, Lcom/alibaba/fastjson/c/q;->e:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_12

    :cond_19
    if-eqz v4, :cond_1b

    .line 51
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/fastjson/c/y;

    .line 52
    invoke-interface {v12, v2, v3, v14}, Lcom/alibaba/fastjson/c/y;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v10, 0x0

    goto :goto_11

    :cond_1b
    const/4 v10, 0x1

    :goto_11
    if-nez v10, :cond_1c

    :goto_12
    move-object/from16 v29, v4

    move-object/from16 v32, v5

    move-object/from16 v30, v11

    move-object/from16 v31, v15

    goto/16 :goto_25

    :cond_1c
    const/4 v10, 0x0

    const-wide/16 v24, 0x0

    .line 53
    iget-boolean v12, v7, Lcom/alibaba/fastjson/e/a;->h:Z

    if-eqz v12, :cond_20

    .line 54
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_1d

    .line 55
    iget-object v12, v7, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v12

    move-object/from16 v27, v10

    const/4 v10, 0x1

    :goto_13
    const/16 v26, 0x0

    :goto_14
    const/16 v28, 0x0

    goto :goto_16

    .line 56
    :cond_1d
    sget-object v12, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_1e

    .line 57
    iget-object v12, v7, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v24

    move-object/from16 v27, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto :goto_13

    .line 58
    :cond_1e
    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v12, :cond_1f

    .line 59
    iget-object v12, v7, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v12

    move-object/from16 v27, v10

    move/from16 v26, v12

    const/4 v10, 0x1

    const/4 v12, 0x0

    goto :goto_14

    .line 60
    :cond_1f
    iget-object v10, v7, Lcom/alibaba/fastjson/e/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_15

    .line 61
    :cond_20
    invoke-virtual {v13, v3}, Lcom/alibaba/fastjson/c/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :goto_15
    move-object/from16 v27, v10

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x1

    :goto_16
    if-eqz v15, :cond_27

    if-eqz v10, :cond_23

    move-object/from16 v29, v4

    .line 62
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_21

    .line 63
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    :goto_17
    move-object/from16 v4, v27

    const/16 v28, 0x1

    goto :goto_18

    .line 64
    :cond_21
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_22

    .line 65
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    goto :goto_17

    .line 66
    :cond_22
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_24

    .line 67
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    goto :goto_17

    :cond_23
    move-object/from16 v29, v4

    :cond_24
    move-object/from16 v4, v27

    .line 68
    :goto_18
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_26

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v31, v15

    move-object/from16 v15, v30

    check-cast v15, Lcom/alibaba/fastjson/c/x;

    .line 69
    invoke-interface {v15, v3, v14, v4}, Lcom/alibaba/fastjson/c/x;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_25

    move-object/from16 v27, v4

    const/4 v4, 0x0

    goto :goto_1b

    :cond_25
    move-object/from16 v15, v31

    goto :goto_19

    :cond_26
    move-object/from16 v31, v15

    move-object/from16 v27, v4

    goto :goto_1a

    :cond_27
    move-object/from16 v29, v4

    move-object/from16 v31, v15

    :goto_1a
    const/4 v4, 0x1

    :goto_1b
    if-nez v4, :cond_28

    move-object/from16 v32, v5

    move-object/from16 v30, v11

    goto/16 :goto_25

    :cond_28
    if-eqz v11, :cond_2d

    if-eqz v10, :cond_2b

    if-nez v28, :cond_2b

    .line 70
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_29

    .line 71
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1c
    const/16 v28, 0x1

    goto :goto_1d

    .line 72
    :cond_29
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2a

    .line 73
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1c

    .line 74
    :cond_2a
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2b

    .line 75
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1c

    :cond_2b
    move-object/from16 v4, v27

    .line 76
    :goto_1d
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v30, v11

    move-object v11, v14

    :goto_1e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v32, v15

    move-object/from16 v15, v27

    check-cast v15, Lcom/alibaba/fastjson/c/u;

    .line 77
    invoke-interface {v15, v3, v11, v4}, Lcom/alibaba/fastjson/c/u;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v15, v32

    goto :goto_1e

    :cond_2c
    move-object/from16 v27, v4

    goto :goto_1f

    :cond_2d
    move-object/from16 v30, v11

    move-object v11, v14

    :goto_1f
    if-eqz v5, :cond_32

    if-eqz v10, :cond_30

    if-nez v28, :cond_30

    .line 78
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2e

    .line 79
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    :goto_20
    const/16 v28, 0x1

    goto :goto_21

    .line 80
    :cond_2e
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_2f

    .line 81
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    goto :goto_20

    .line 82
    :cond_2f
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v4, :cond_30

    .line 83
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    goto :goto_20

    .line 84
    :cond_30
    :goto_21
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v15, v27

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v33, v4

    move-object/from16 v4, v32

    check-cast v4, Lcom/alibaba/fastjson/c/d;

    .line 85
    invoke-interface {v4, v3, v14, v15}, Lcom/alibaba/fastjson/c/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v4, v33

    goto :goto_22

    :cond_31
    move-object/from16 v4, v27

    move-object/from16 v27, v15

    goto :goto_23

    :cond_32
    move-object/from16 v4, v27

    :goto_23
    const-string v15, ""

    if-eqz v28, :cond_40

    if-nez v27, :cond_40

    move-object/from16 v32, v5

    .line 86
    :try_start_d
    iget v5, v7, Lcom/alibaba/fastjson/e/a;->u:I

    iget v3, v1, Lcom/alibaba/fastjson/c/q;->c:I

    or-int/2addr v3, v5

    iget v5, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    or-int/2addr v3, v5

    .line 87
    const-class v5, Ljava/lang/Boolean;

    if-ne v8, v5, :cond_36

    .line 88
    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    move-object/from16 v33, v7

    .line 89
    sget-object v7, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    iget v7, v7, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v7, v5

    if-nez v9, :cond_33

    and-int v34, v3, v7

    if-nez v34, :cond_33

    move-object/from16 v34, v15

    .line 90
    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v7, v15

    if-nez v7, :cond_34

    goto/16 :goto_25

    :cond_33
    move-object/from16 v34, v15

    :cond_34
    and-int/2addr v3, v5

    if-nez v3, :cond_35

    .line 91
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_41

    :cond_35
    const/4 v3, 0x0

    .line 92
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    goto/16 :goto_24

    :cond_36
    move-object/from16 v33, v7

    move-object/from16 v34, v15

    .line 93
    const-class v5, Ljava/lang/String;

    if-ne v8, v5, :cond_39

    .line 94
    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    .line 95
    sget-object v7, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    iget v7, v7, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v7, v5

    if-nez v9, :cond_37

    and-int v15, v3, v7

    if-nez v15, :cond_37

    .line 96
    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v7, v15

    if-nez v7, :cond_37

    goto/16 :goto_25

    :cond_37
    and-int/2addr v3, v5

    if-nez v3, :cond_38

    .line 97
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_41

    :cond_38
    move-object/from16 v27, v34

    goto/16 :goto_24

    .line 98
    :cond_39
    const-class v5, Ljava/lang/Number;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 99
    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    .line 100
    sget-object v7, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    iget v7, v7, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v7, v5

    if-nez v9, :cond_3a

    and-int v15, v3, v7

    if-nez v15, :cond_3a

    .line 101
    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v7, v15

    if-nez v7, :cond_3a

    goto/16 :goto_25

    :cond_3a
    and-int/2addr v3, v5

    if-nez v3, :cond_3b

    .line 102
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_41

    :cond_3b
    const/4 v3, 0x0

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    goto :goto_24

    .line 104
    :cond_3c
    const-class v5, Ljava/util/Collection;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 105
    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    .line 106
    sget-object v7, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    iget v7, v7, Lcom/alibaba/fastjson/c/b;->mask:I

    or-int/2addr v7, v5

    if-nez v9, :cond_3d

    and-int v15, v3, v7

    if-nez v15, :cond_3d

    .line 107
    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v7, v15

    if-nez v7, :cond_3d

    goto/16 :goto_25

    :cond_3d
    and-int/2addr v3, v5

    if-nez v3, :cond_3e

    .line 108
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_41

    .line 109
    :cond_3e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_24

    :cond_3f
    if-nez v9, :cond_41

    .line 110
    iget-boolean v3, v13, Lcom/alibaba/fastjson/c/m;->f:Z

    if-nez v3, :cond_41

    sget-object v3, Lcom/alibaba/fastjson/c/b;->WriteMapNullValue:Lcom/alibaba/fastjson/c/b;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->a(Lcom/alibaba/fastjson/c/b;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_25

    :cond_40
    move-object/from16 v32, v5

    move-object/from16 v33, v7

    move-object/from16 v34, v15

    :cond_41
    :goto_24
    move-object/from16 v3, v27

    if-eqz v28, :cond_44

    if-eqz v3, :cond_44

    if-eqz v23, :cond_44

    .line 111
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v8, v5, :cond_42

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v8, v5, :cond_42

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v5, :cond_42

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v8, v5, :cond_42

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v8, v5, :cond_42

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_43

    :cond_42
    instance-of v5, v3, Ljava/lang/Number;

    if-eqz v5, :cond_43

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    .line 112
    invoke-virtual {v5}, Ljava/lang/Number;->byteValue()B

    move-result v5

    if-nez v5, :cond_43

    goto :goto_25

    .line 113
    :cond_43
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v5, :cond_44

    instance-of v5, v3, Ljava/lang/Boolean;

    if-eqz v5, :cond_44

    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    .line 114
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_44

    :goto_25
    const/4 v4, 0x0

    const/16 v27, 0x2c

    goto/16 :goto_33

    :cond_44
    if-eqz v16, :cond_47

    .line 115
    iget v5, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 116
    iget-object v7, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v7, v7

    if-le v5, v7, :cond_46

    .line 117
    iget-object v7, v6, Lcom/alibaba/fastjson/c/c0;->h:Ljava/io/Writer;

    if-nez v7, :cond_45

    .line 118
    invoke-virtual {v6, v5}, Lcom/alibaba/fastjson/c/c0;->c(I)V

    goto :goto_26

    .line 119
    :cond_45
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->flush()V

    const/4 v5, 0x1

    .line 120
    :cond_46
    :goto_26
    iget-object v7, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    const/16 v27, 0x2c

    aput-char v27, v7, v15

    .line 121
    iput v5, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    .line 122
    iget v5, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v7, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    iget v7, v7, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v5, v7

    if-eqz v5, :cond_48

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/c/p;->e()V

    goto :goto_27

    :cond_47
    const/16 v27, 0x2c

    :cond_48
    :goto_27
    if-eq v11, v14, :cond_4b

    if-nez v9, :cond_49

    const/4 v4, 0x1

    .line 124
    invoke-virtual {v6, v11, v4}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;Z)V

    .line 125
    :cond_49
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    :cond_4a
    :goto_28
    const/4 v4, 0x0

    goto/16 :goto_32

    :cond_4b
    if-eq v4, v3, :cond_4d

    if-nez v9, :cond_4c

    .line 126
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/c/m;->a(Lcom/alibaba/fastjson/c/p;)V

    .line 127
    :cond_4c
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/c/p;->b(Ljava/lang/Object;)V

    goto :goto_28

    :cond_4d
    if-nez v9, :cond_52

    if-eqz v22, :cond_51

    .line 128
    iget-object v4, v13, Lcom/alibaba/fastjson/c/m;->i:[C

    .line 129
    array-length v5, v4

    .line 130
    iget v7, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    add-int/2addr v7, v5

    .line 131
    iget-object v11, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v11, v11

    if-le v7, v11, :cond_50

    .line 132
    iget-object v11, v6, Lcom/alibaba/fastjson/c/c0;->h:Ljava/io/Writer;

    if-nez v11, :cond_4e

    .line 133
    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/c/c0;->c(I)V

    goto :goto_29

    :cond_4e
    move v7, v5

    const/4 v5, 0x0

    .line 134
    :cond_4f
    iget-object v11, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v11, v11

    iget v14, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    sub-int/2addr v11, v14

    .line 135
    iget-object v14, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    invoke-static {v4, v5, v14, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v14, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v14, v14

    iput v14, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    .line 137
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->flush()V

    sub-int/2addr v7, v11

    add-int/2addr v5, v11

    .line 138
    iget-object v11, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v11, v11

    if-gt v7, v11, :cond_4f

    move v11, v7

    goto :goto_2a

    :cond_50
    :goto_29
    move v11, v7

    move v7, v5

    const/4 v5, 0x0

    .line 139
    :goto_2a
    iget-object v14, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    iget v15, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    invoke-static {v4, v5, v14, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iput v11, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    goto :goto_2b

    .line 141
    :cond_51
    invoke-virtual {v13, v2}, Lcom/alibaba/fastjson/c/m;->a(Lcom/alibaba/fastjson/c/p;)V

    :cond_52
    :goto_2b
    if-eqz v10, :cond_5c

    if-nez v28, :cond_5c

    .line 142
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_59

    const/high16 v3, -0x80000000

    if-ne v12, v3, :cond_53

    const-string v3, "-2147483648"

    .line 143
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->write(Ljava/lang/String;)V

    goto :goto_28

    :cond_53
    if-gez v12, :cond_54

    neg-int v3, v12

    goto :goto_2c

    :cond_54
    move v3, v12

    :goto_2c
    const/4 v4, 0x0

    .line 144
    :goto_2d
    sget-object v5, Lcom/alibaba/fastjson/c/c0;->j:[I

    aget v5, v5, v4

    if-gt v3, v5, :cond_58

    add-int/lit8 v4, v4, 0x1

    if-gez v12, :cond_55

    add-int/lit8 v4, v4, 0x1

    .line 145
    :cond_55
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    add-int/2addr v3, v4

    .line 146
    iget-object v5, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v5, v5

    if-le v3, v5, :cond_57

    .line 147
    iget-object v5, v6, Lcom/alibaba/fastjson/c/c0;->h:Ljava/io/Writer;

    if-nez v5, :cond_56

    .line 148
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->c(I)V

    goto :goto_2e

    .line 149
    :cond_56
    new-array v5, v4, [C

    int-to-long v7, v12

    .line 150
    invoke-static {v7, v8, v4, v5}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    .line 151
    array-length v4, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, Lcom/alibaba/fastjson/c/c0;->write([CII)V

    const/4 v4, 0x1

    goto :goto_2f

    :cond_57
    :goto_2e
    const/4 v4, 0x0

    :goto_2f
    if-nez v4, :cond_4a

    int-to-long v4, v12

    .line 152
    iget-object v7, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    invoke-static {v4, v5, v3, v7}, Lcom/alibaba/fastjson/c/c0;->a(JI[C)V

    .line 153
    iput v3, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    goto/16 :goto_28

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 154
    :cond_59
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_5a

    .line 155
    iget-object v3, v2, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    move-wide/from16 v4, v24

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/c/c0;->h(J)V

    goto/16 :goto_28

    .line 156
    :cond_5a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v8, v3, :cond_4a

    if-eqz v26, :cond_5b

    .line 157
    iget-object v3, v2, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    sget-object v4, Lcom/alibaba/fastjson/c/q;->f:[C

    sget-object v5, Lcom/alibaba/fastjson/c/q;->f:[C

    array-length v5, v5

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Lcom/alibaba/fastjson/c/c0;->write([CII)V

    goto/16 :goto_28

    .line 158
    :cond_5b
    iget-object v3, v2, Lcom/alibaba/fastjson/c/p;->b:Lcom/alibaba/fastjson/c/c0;

    sget-object v4, Lcom/alibaba/fastjson/c/q;->g:[C

    sget-object v5, Lcom/alibaba/fastjson/c/q;->g:[C

    array-length v5, v5

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v5}, Lcom/alibaba/fastjson/c/c0;->write([CII)V

    goto/16 :goto_28

    :cond_5c
    if-nez v9, :cond_67

    .line 159
    const-class v4, Ljava/lang/String;

    if-ne v8, v4, :cond_61

    .line 160
    iget v4, v13, Lcom/alibaba/fastjson/c/m;->g:I

    iget v5, v1, Lcom/alibaba/fastjson/c/q;->c:I

    or-int/2addr v4, v5

    if-nez v3, :cond_5f

    .line 161
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v3, v5

    if-nez v3, :cond_5e

    sget-object v3, Lcom/alibaba/fastjson/c/b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/c/b;

    iget v3, v3, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_5d

    goto :goto_30

    .line 162
    :cond_5d
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto/16 :goto_28

    :cond_5e
    :goto_30
    move-object/from16 v3, v34

    .line 163
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->c(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 164
    :cond_5f
    check-cast v3, Ljava/lang/String;

    if-eqz v21, :cond_60

    .line 165
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_60
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 166
    invoke-virtual {v6, v3, v4, v5}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;CZ)V

    goto/16 :goto_28

    :cond_61
    move-object/from16 v4, v33

    .line 167
    iget-boolean v4, v4, Lcom/alibaba/fastjson/e/a;->q:Z

    if-eqz v4, :cond_66

    if-eqz v3, :cond_65

    .line 168
    iget v4, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v5, Lcom/alibaba/fastjson/c/b;->WriteEnumUsingToString:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_64

    .line 169
    check-cast v3, Ljava/lang/Enum;

    .line 170
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    iget v4, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v5, Lcom/alibaba/fastjson/c/b;->UseSingleQuotes:Lcom/alibaba/fastjson/c/b;

    iget v5, v5, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_62

    const/4 v4, 0x1

    goto :goto_31

    :cond_62
    const/4 v4, 0x0

    :goto_31
    if-eqz v4, :cond_63

    .line 172
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_63
    const/4 v4, 0x0

    .line 173
    invoke-virtual {v6, v3, v4, v4}, Lcom/alibaba/fastjson/c/c0;->a(Ljava/lang/String;CZ)V

    goto :goto_32

    :cond_64
    const/4 v4, 0x0

    .line 174
    check-cast v3, Ljava/lang/Enum;

    .line 175
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/c/c0;->d(I)V

    goto :goto_32

    :cond_65
    const/4 v4, 0x0

    .line 176
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->i()V

    goto :goto_32

    :cond_66
    const/4 v4, 0x0

    .line 177
    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/c/m;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;)V

    goto :goto_32

    :cond_67
    const/4 v4, 0x0

    .line 178
    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/c/m;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :goto_32
    const/16 v16, 0x1

    :goto_33
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v3, p2

    move-object/from16 v7, v19

    move/from16 v14, v21

    move/from16 v12, v22

    move/from16 v10, v23

    move-object/from16 v4, v29

    move-object/from16 v11, v30

    move-object/from16 v15, v31

    move-object/from16 v5, v32

    goto/16 :goto_10

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v3, v17

    goto/16 :goto_3a

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v3, v17

    goto/16 :goto_39

    :cond_68
    move-object/from16 v19, v7

    const/4 v4, 0x0

    const/16 v27, 0x2c

    .line 179
    :try_start_e
    iget-object v3, v2, Lcom/alibaba/fastjson/c/p;->d:Ljava/util/List;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v3, :cond_6a

    if-eqz v16, :cond_69

    goto :goto_34

    :cond_69
    const/16 v27, 0x0

    .line 180
    :goto_34
    :try_start_f
    iget-object v3, v2, Lcom/alibaba/fastjson/c/p;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move/from16 v4, v27

    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/c/a;

    move-object/from16 v7, p2

    .line 181
    invoke-virtual {v5, v2, v7, v4}, Lcom/alibaba/fastjson/c/a;->a(Lcom/alibaba/fastjson/c/p;Ljava/lang/Object;C)C

    move-result v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_35

    :cond_6a
    move-object/from16 v7, v19

    .line 182
    :try_start_10
    array-length v3, v7
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-lez v3, :cond_6b

    :try_start_11
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->g:I

    sget-object v4, Lcom/alibaba/fastjson/c/b;->PrettyFormat:Lcom/alibaba/fastjson/c/b;

    iget v4, v4, Lcom/alibaba/fastjson/c/b;->mask:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6b

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/c/p;->d()V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/c/p;->e()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 185
    :cond_6b
    :try_start_12
    iget v3, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    const/4 v7, 0x1

    add-int/lit8 v12, v3, 0x1

    .line 186
    iget-object v3, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    array-length v3, v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-le v12, v3, :cond_6d

    .line 187
    :try_start_13
    iget-object v3, v6, Lcom/alibaba/fastjson/c/c0;->h:Ljava/io/Writer;

    if-nez v3, :cond_6c

    .line 188
    invoke-virtual {v6, v12}, Lcom/alibaba/fastjson/c/c0;->c(I)V

    goto :goto_36

    .line 189
    :cond_6c
    invoke-virtual {v6}, Lcom/alibaba/fastjson/c/c0;->flush()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    const/4 v12, 0x1

    .line 190
    :cond_6d
    :goto_36
    :try_start_14
    iget-object v3, v6, Lcom/alibaba/fastjson/c/c0;->e:[C

    iget v4, v6, Lcom/alibaba/fastjson/c/c0;->f:I

    aput-char v18, v3, v4

    .line 191
    iput v12, v6, Lcom/alibaba/fastjson/c/c0;->f:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    move-object/from16 v3, v17

    .line 192
    iput-object v3, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_37

    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_38

    :catchall_3
    move-exception v0

    move-object v3, v8

    :goto_37
    move-object v4, v0

    goto :goto_3a

    :catch_3
    move-exception v0

    move-object v3, v8

    :goto_38
    move-object v4, v0

    :goto_39
    :try_start_15
    const-string v5, "write javaBean error, fastjson version 1.1.68"

    move-object/from16 v6, p3

    if-eqz v6, :cond_6e

    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", fieldName : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 194
    :cond_6e
    new-instance v6, Lcom/alibaba/fastjson/f;

    invoke-direct {v6, v5, v4}, Lcom/alibaba/fastjson/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_37

    .line 195
    :goto_3a
    iput-object v3, v2, Lcom/alibaba/fastjson/c/p;->m:Lcom/alibaba/fastjson/c/z;

    goto :goto_3c

    :goto_3b
    throw v4

    :goto_3c
    goto :goto_3b
.end method
