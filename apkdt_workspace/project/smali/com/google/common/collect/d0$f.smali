.class Lcom/google/common/collect/d0$f;
.super Lcom/google/common/collect/e0;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/e0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/d0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    invoke-direct {p0}, Lcom/google/common/collect/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/d0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    iget-object v0, v0, Lcom/google/common/collect/d0;->map:Lcom/google/common/collect/z;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/z;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_0
    return p1
.end method

.method public elementSet()Lcom/google/common/collect/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g0<",
            "TK;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    invoke-virtual {v0}, Lcom/google/common/collect/d0;->keySet()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d0$f;->elementSet()Lcom/google/common/collect/g0;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/v0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/v0$a<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    iget-object v0, v0, Lcom/google/common/collect/d0;->map:Lcom/google/common/collect/z;

    invoke-virtual {v0}, Lcom/google/common/collect/z;->entrySet()Lcom/google/common/collect/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g0;->asList()Lcom/google/common/collect/x;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/common/collect/w0;->a(Ljava/lang/Object;I)Lcom/google/common/collect/v0$a;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    invoke-virtual {v0}, Lcom/google/common/collect/d0;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/d0$g;

    iget-object v1, p0, Lcom/google/common/collect/d0$f;->this$0:Lcom/google/common/collect/d0;

    invoke-direct {v0, v1}, Lcom/google/common/collect/d0$g;-><init>(Lcom/google/common/collect/d0;)V

    return-object v0
.end method
