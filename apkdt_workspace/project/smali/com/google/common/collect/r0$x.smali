.class final Lcom/google/common/collect/r0$x;
.super Lcom/google/common/collect/r0$h;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/r0<",
        "TK;TV;TE;TS;>.h<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/r0$h;-><init>(Lcom/google/common/collect/r0;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/r0$h;->b()Lcom/google/common/collect/r0$i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r0$i0;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
