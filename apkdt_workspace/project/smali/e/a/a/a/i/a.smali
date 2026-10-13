.class public Le/a/a/a/i/a;
.super Ljava/lang/Object;
.source "AnnotationLookup.java"

# interfaces
.implements Le/a/a/a/i/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/a/i/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection<",
            "Le/a/a/a/i/a$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Le/a/a/a/i/a;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private a(Le/a/a/a/i/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;IILjava/lang/String;ILjava/lang/String;)Le/a/a/a/h;
    .locals 12

    move-object v0, p1

    .line 28
    new-instance v10, Le/a/a/a/g/a;

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    invoke-direct {v10, p3, v3, p2}, Le/a/a/a/g/a;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 29
    new-instance v11, Le/a/a/a/h;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v2, -0x1

    move-object v1, v11

    move-object/from16 v5, p7

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v10}, Le/a/a/a/h;-><init>(JLjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Le/a/a/a/g/b;)V

    if-eqz v0, :cond_0

    .line 30
    invoke-interface {p1, v11}, Le/a/a/a/i/b;->a(Le/a/a/a/h;)Le/a/a/a/h;

    :cond_0
    return-object v11
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Class;Le/a/a/a/i/b;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Le/a/a/a/i/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Le/a/a/a/h;",
            ">;>;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v14, v2, v5

    .line 14
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_0
    const-class v6, Lcom/alibaba/taffy/bus/annotation/Subscribe;

    invoke-virtual {v14, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/alibaba/taffy/bus/annotation/Subscribe;

    if-eqz v15, :cond_4

    .line 16
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 17
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    .line 18
    array-length v7, v6

    if-ne v7, v8, :cond_2

    .line 19
    aget-object v16, v6, v4

    .line 20
    new-instance v13, Le/a/a/a/i/a$a;

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->thread()I

    move-result v8

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->priority()I

    move-result v9

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->filter()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->status()I

    move-result v12

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->group()Ljava/lang/String;

    move-result-object v17

    move-object v6, v13

    move-object/from16 v7, v16

    move-object v10, v14

    move-object v4, v13

    move-object/from16 v13, v17

    invoke-direct/range {v6 .. v13}, Le/a/a/a/i/a$a;-><init>(Ljava/lang/Class;IILjava/lang/reflect/Method;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-nez v4, :cond_1

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->priority()I

    move-result v11

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->thread()I

    move-result v12

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->filter()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->status()I

    move-result v17

    invoke-interface {v15}, Lcom/alibaba/taffy/bus/annotation/Subscribe;->group()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, v16

    move-object/from16 v9, p1

    move-object v10, v14

    move/from16 v14, v17

    invoke-direct/range {v6 .. v15}, Le/a/a/a/i/a;->a(Le/a/a/a/i/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;IILjava/lang/String;ILjava/lang/String;)Le/a/a/a/h;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_2
    new-instance v0, Le/a/a/a/e/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the binder listener method ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] signature is not illegal\uff1amust be EventStatus method(Object e)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/a/a/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_3
    new-instance v0, Le/a/a/a/e/b;

    const-string v1, "the binder listener must be public"

    invoke-direct {v0, v1}, Le/a/a/a/e/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v4, p0

    .line 27
    iget-object v2, v4, Le/a/a/a/i/a;->a:Ljava/util/WeakHashMap;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/Collection;Le/a/a/a/i/b;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Le/a/a/a/i/a$a;",
            ">;",
            "Le/a/a/a/i/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Le/a/a/a/h;",
            ">;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/a/i/a$a;

    .line 7
    iget-object v3, v2, Le/a/a/a/i/a$a;->g:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_0

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v4, v2, Le/a/a/a/i/a$a;->g:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v6, v2, Le/a/a/a/i/a$a;->g:Ljava/lang/Class;

    iget-object v8, v2, Le/a/a/a/i/a$a;->a:Ljava/lang/reflect/Method;

    iget v9, v2, Le/a/a/a/i/a$a;->c:I

    iget v10, v2, Le/a/a/a/i/a$a;->b:I

    iget-object v11, v2, Le/a/a/a/i/a$a;->d:Ljava/lang/String;

    iget v12, v2, Le/a/a/a/i/a$a;->e:I

    iget-object v13, v2, Le/a/a/a/i/a$a;->f:Ljava/lang/String;

    move-object v4, p0

    move-object/from16 v5, p3

    move-object v7, p1

    invoke-direct/range {v4 .. v13}, Le/a/a/a/i/a;->a(Le/a/a/a/i/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;IILjava/lang/String;ILjava/lang/String;)Le/a/a/a/h;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/a/a/a/i/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/a/a/a/i/b;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Le/a/a/a/h;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/a/i/a;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0, p2}, Le/a/a/a/i/a;->a(Ljava/lang/Object;Ljava/lang/Class;Le/a/a/a/i/b;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1, v1, p2}, Le/a/a/a/i/a;->a(Ljava/lang/Object;Ljava/util/Collection;Le/a/a/a/i/b;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    return-object p1
.end method
