.class final Lcom/google/common/collect/r0$o;
.super Lcom/google/common/collect/r0$b;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0$b<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3L


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
    invoke-direct/range {p0 .. p6}, Lcom/google/common/collect/r0$b;-><init>(Lcom/google/common/collect/r0$p;Lcom/google/common/collect/r0$p;Le/i/c/a/b;Le/i/c/a/b;ILjava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$b;->readMapMaker(Ljava/io/ObjectInputStream;)Lcom/google/common/collect/q0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/q0;->f()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$b;->readEntries(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/r0$b;->delegate:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/r0$b;->writeMapTo(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
