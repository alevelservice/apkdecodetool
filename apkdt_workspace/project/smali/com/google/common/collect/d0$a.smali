.class Lcom/google/common/collect/d0$a;
.super Lcom/google/common/collect/t1;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d0;->entryIterator()Lcom/google/common/collect/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;+",
            "Lcom/google/common/collect/v<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field g:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/google/common/collect/d0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/d0$a;->h:Lcom/google/common/collect/d0;

    invoke-direct {p0}, Lcom/google/common/collect/t1;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/d0$a;->h:Lcom/google/common/collect/d0;

    iget-object p1, p1, Lcom/google/common/collect/d0;->map:Lcom/google/common/collect/z;

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/z;->entrySet()Lcom/google/common/collect/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g0;->iterator()Lcom/google/common/collect/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/d0$a;->e:Ljava/util/Iterator;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/common/collect/d0$a;->f:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/google/common/collect/m0;->a()Lcom/google/common/collect/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/d0$a;->g:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/d0$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d0$a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/d0$a;->f:Ljava/lang/Object;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/d0$a;->g:Ljava/util/Iterator;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/d0$a;->f:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/d0$a;->g:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/s0;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
