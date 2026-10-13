.class Lcom/google/common/collect/c0$a;
.super Lcom/google/common/collect/t1;
.source "ImmutableMapValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c0;->iterator()Lcom/google/common/collect/t1;
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
.field final e:Lcom/google/common/collect/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/common/collect/c0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/c0$a;->f:Lcom/google/common/collect/c0;

    invoke-direct {p0}, Lcom/google/common/collect/t1;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/common/collect/c0$a;->f:Lcom/google/common/collect/c0;

    invoke-static {p1}, Lcom/google/common/collect/c0;->access$000(Lcom/google/common/collect/c0;)Lcom/google/common/collect/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/z;->entrySet()Lcom/google/common/collect/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g0;->iterator()Lcom/google/common/collect/t1;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/c0$a;->e:Lcom/google/common/collect/t1;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->e:Lcom/google/common/collect/t1;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

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
    iget-object v0, p0, Lcom/google/common/collect/c0$a;->e:Lcom/google/common/collect/t1;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
