.class final Lcom/google/common/collect/r0$v;
.super Lcom/google/common/collect/r0$n;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$n<",
        "TK;TV;",
        "Lcom/google/common/collect/r0$u<",
        "TK;TV;>;",
        "Lcom/google/common/collect/r0$v<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/r0;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/r0$v<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/r0$n;-><init>(Lcom/google/common/collect/r0;II)V

    .line 2
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/r0$v;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/r0$v;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/r0$v;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$v;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$u;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/common/collect/r0$u;

    return-object p1
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$v;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$g0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;TV;*>;)",
            "Lcom/google/common/collect/r0$g0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$v;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$u;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/r0$u;->c()Lcom/google/common/collect/r0$g0;

    move-result-object p1

    return-object p1
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$v;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/r0$n;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$v;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/r0$n;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method public newWeakValueReferenceForTesting(Lcom/google/common/collect/r0$i;Ljava/lang/Object;)Lcom/google/common/collect/r0$g0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;TV;*>;TV;)",
            "Lcom/google/common/collect/r0$g0<",
            "TK;TV;",
            "Lcom/google/common/collect/r0$u<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$h0;

    iget-object v1, p0, Lcom/google/common/collect/r0$v;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$v;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$u;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Lcom/google/common/collect/r0$h0;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/r0$i;)V

    return-object v0
.end method

.method bridge synthetic self()Lcom/google/common/collect/r0$n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$v;->self()Lcom/google/common/collect/r0$v;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/google/common/collect/r0$v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0$v<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lcom/google/common/collect/r0$i;Lcom/google/common/collect/r0$g0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;TV;*>;",
            "Lcom/google/common/collect/r0$g0<",
            "TK;TV;+",
            "Lcom/google/common/collect/r0$i<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$v;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$u;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/r0$u;->a(Lcom/google/common/collect/r0$u;)Lcom/google/common/collect/r0$g0;

    move-result-object v0

    .line 3
    invoke-static {p1, p2}, Lcom/google/common/collect/r0$u;->a(Lcom/google/common/collect/r0$u;Lcom/google/common/collect/r0$g0;)Lcom/google/common/collect/r0$g0;

    .line 4
    invoke-interface {v0}, Lcom/google/common/collect/r0$g0;->clear()V

    return-void
.end method
