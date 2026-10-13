.class final Lcom/google/common/collect/r0$a0;
.super Lcom/google/common/collect/r0$n;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$n<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$z<",
        "TK;>;",
        "Lcom/google/common/collect/r0$a0<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
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
            "TK;",
            "Lcom/google/common/collect/q0$a;",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/r0$n;-><init>(Lcom/google/common/collect/r0;II)V

    .line 2
    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/r0$a0;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/collect/r0$a0;)Ljava/lang/ref/ReferenceQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/r0$a0;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$a0;->castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$z;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$z;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$i<",
            "TK;",
            "Lcom/google/common/collect/q0$a;",
            "*>;)",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/common/collect/r0$z;

    return-object p1
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$a0;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$a0;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/r0$n;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$a0;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/r0$n;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method self()Lcom/google/common/collect/r0$a0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;"
        }
    .end annotation

    return-object p0
.end method

.method bridge synthetic self()Lcom/google/common/collect/r0$n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$a0;->self()Lcom/google/common/collect/r0$a0;

    move-result-object v0

    return-object v0
.end method
