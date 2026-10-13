.class Lcom/google/common/collect/z$d$a;
.super Lcom/google/common/collect/t1;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/z$d;->entryIterator()Lcom/google/common/collect/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t1<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Lcom/google/common/collect/g0<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/z$d;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/common/collect/z$d$a;->e:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/t1;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/z$d$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/z$d$a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lcom/google/common/collect/g0<",
            "TV;>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/z$d$a;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    new-instance v1, Lcom/google/common/collect/z$d$a$a;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/z$d$a$a;-><init>(Lcom/google/common/collect/z$d$a;Ljava/util/Map$Entry;)V

    return-object v1
.end method
