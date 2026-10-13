.class final Lcom/google/common/collect/z$d;
.super Lcom/google/common/collect/z$c;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/z$c<",
        "TK;",
        "Lcom/google/common/collect/g0<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/z;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-direct {p0}, Lcom/google/common/collect/z$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/z;Lcom/google/common/collect/z$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/z$d;-><init>(Lcom/google/common/collect/z;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/z;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method createKeySet()Lcom/google/common/collect/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->keySet()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lcom/google/common/collect/t1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/t1<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/g0<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g0;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/z$d$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/z$d$a;-><init>(Lcom/google/common/collect/z$d;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/g0;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/g0<",
            "TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/z;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/g0;->of(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/z$d;->get(Ljava/lang/Object;)Lcom/google/common/collect/g0;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->hashCode()I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->isHashCodeFast()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d;->this$0:Lcom/google/common/collect/z;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
