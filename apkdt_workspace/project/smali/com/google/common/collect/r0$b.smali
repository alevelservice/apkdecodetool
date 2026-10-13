.class abstract Lcom/google/common/collect/r0$b;
.super Lcom/google/common/collect/r;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final keyEquivalence:Le/i/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/r0$p;

.field final valueEquivalence:Le/i/c/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/r0$p;


# direct methods
.method constructor <init>(Lcom/google/common/collect/r0$p;Lcom/google/common/collect/r0$p;Le/i/c/a/b;Le/i/c/a/b;ILjava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$p;",
            "Lcom/google/common/collect/r0$p;",
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;",
            "Le/i/c/a/b<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/r;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/r0$b;->keyStrength:Lcom/google/common/collect/r0$p;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/r0$b;->valueStrength:Lcom/google/common/collect/r0$p;

    .line 4
    iput-object p3, p0, Lcom/google/common/collect/r0$b;->keyEquivalence:Le/i/c/a/b;

    .line 5
    iput-object p4, p0, Lcom/google/common/collect/r0$b;->valueEquivalence:Le/i/c/a/b;

    .line 6
    iput p5, p0, Lcom/google/common/collect/r0$b;->concurrencyLevel:I

    .line 7
    iput-object p6, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$b;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Map;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/r0$b;->delegate()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method readEntries(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/q0;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    .line 2
    new-instance v0, Lcom/google/common/collect/q0;

    invoke-direct {v0}, Lcom/google/common/collect/q0;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q0;->b(I)Lcom/google/common/collect/q0;

    iget-object p1, p0, Lcom/google/common/collect/r0$b;->keyStrength:Lcom/google/common/collect/r0$p;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q0;->a(Lcom/google/common/collect/r0$p;)Lcom/google/common/collect/q0;

    iget-object p1, p0, Lcom/google/common/collect/r0$b;->valueStrength:Lcom/google/common/collect/r0$p;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q0;->b(Lcom/google/common/collect/r0$p;)Lcom/google/common/collect/q0;

    iget-object p1, p0, Lcom/google/common/collect/r0$b;->keyEquivalence:Le/i/c/a/b;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q0;->a(Le/i/c/a/b;)Lcom/google/common/collect/q0;

    iget p1, p0, Lcom/google/common/collect/r0$b;->concurrencyLevel:I

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/q0;->a(I)Lcom/google/common/collect/q0;

    return-object v0
.end method

.method writeMapTo(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
