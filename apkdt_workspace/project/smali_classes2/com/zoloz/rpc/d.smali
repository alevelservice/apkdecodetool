.class public Lcom/zoloz/rpc/d;
.super Ljava/lang/Object;
.source "SNormalRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Le/o/a/d;)Le/o/a/e;
    .locals 4

    .line 10
    iget-object v0, p1, Le/o/a/d;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zoloz/rpc/RpcConfig;->getInstance()Lcom/zoloz/rpc/RpcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zoloz/rpc/RpcConfig;->isEncodeParam()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p1, Le/o/a/d;->a:Ljava/lang/String;

    iget-object v1, p1, Le/o/a/d;->b:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/zoloz/rpc/e;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p1, Le/o/a/d;->b:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/zoloz/rpc/d;->a(Ljava/util/HashMap;)Ljava/util/List;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_aop_signature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p1, Le/o/a/d;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/zoloz/rpc/b;->a(Ljava/lang/String;Ljava/lang/Object;)Le/o/a/e;

    move-result-object p1

    return-object p1

    .line 15
    :cond_0
    iget-object v0, p1, Le/o/a/d;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 16
    iget-object p1, p1, Le/o/a/d;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/zoloz/rpc/b;->a(Ljava/lang/String;Ljava/lang/Object;Z)Le/o/a/e;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    iget-object v0, p1, Le/o/a/d;->a:Ljava/lang/String;

    iget-object p1, p1, Le/o/a/d;->b:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/zoloz/rpc/b;->a(Ljava/lang/String;Ljava/lang/Object;)Le/o/a/e;

    move-result-object p1

    return-object p1
.end method
