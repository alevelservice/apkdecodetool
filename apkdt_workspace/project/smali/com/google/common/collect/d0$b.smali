.class Lcom/google/common/collect/d0$b;
.super Lcom/google/common/collect/t1;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/d0;->valueIterator()Lcom/google/common/collect/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/t1<",
        "TV;>;"
    }
.end annotation


# instance fields
.field e:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/collect/v<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field f:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/google/common/collect/d0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/d0$b;->g:Lcom/google/common/collect/d0;

    invoke-direct {p0}, Lcom/google/common/collect/t1;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/d0$b;->g:Lcom/google/common/collect/d0;

    iget-object p1, p1, Lcom/google/common/collect/d0;->map:Lcom/google/common/collect/z;

    invoke-virtual {p1}, Lcom/google/common/collect/z;->values()Lcom/google/common/collect/v;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v;->iterator()Lcom/google/common/collect/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/d0$b;->e:Ljava/util/Iterator;

    .line 3
    invoke-static {}, Lcom/google/common/collect/m0;->a()Lcom/google/common/collect/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/d0$b;->f:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/d0$b;->e:Ljava/util/Iterator;

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

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d0$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d0$b;->e:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/v;

    invoke-virtual {v0}, Lcom/google/common/collect/v;->iterator()Lcom/google/common/collect/t1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/d0$b;->f:Ljava/util/Iterator;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/d0$b;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
