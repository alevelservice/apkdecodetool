.class final Lcom/google/common/collect/r0$z$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/r0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0$z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/r0$j<",
        "TK;",
        "Lcom/google/common/collect/q0$a;",
        "Lcom/google/common/collect/r0$z<",
        "TK;>;",
        "Lcom/google/common/collect/r0$a0<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/r0$z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0$z$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$z$a;

    invoke-direct {v0}, Lcom/google/common/collect/r0$z$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/r0$z$a;->a:Lcom/google/common/collect/r0$z$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/r0$z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/r0$z$a<",
            "TK;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$z$a;->a:Lcom/google/common/collect/r0$z$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TK;",
            "Lcom/google/common/collect/q0$a;",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/common/collect/r0$a0;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/r0$a0;-><init>(Lcom/google/common/collect/r0;II)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Lcom/google/common/collect/r0$i;Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0
    .param p3    # Lcom/google/common/collect/r0$i;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/r0$a0;

    check-cast p2, Lcom/google/common/collect/r0$z;

    check-cast p3, Lcom/google/common/collect/r0$z;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$z$a;->a(Lcom/google/common/collect/r0$a0;Lcom/google/common/collect/r0$z;Lcom/google/common/collect/r0$z;)Lcom/google/common/collect/r0$z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Ljava/lang/Object;ILcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0
    .param p4    # Lcom/google/common/collect/r0$i;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/google/common/collect/r0$a0;

    check-cast p4, Lcom/google/common/collect/r0$z;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/r0$z$a;->a(Lcom/google/common/collect/r0$a0;Ljava/lang/Object;ILcom/google/common/collect/r0$z;)Lcom/google/common/collect/r0$z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$n;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$z$a;->a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$a0;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/google/common/collect/r0$p;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/common/collect/r0$p;->WEAK:Lcom/google/common/collect/r0$p;

    return-object v0
.end method

.method public a(Lcom/google/common/collect/r0$a0;Lcom/google/common/collect/r0$z;Lcom/google/common/collect/r0$z;)Lcom/google/common/collect/r0$z;
    .locals 1
    .param p3    # Lcom/google/common/collect/r0$z;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;)",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p2}, Lcom/google/common/collect/r0$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/r0$a0;->access$200(Lcom/google/common/collect/r0$a0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/r0$z;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/r0$z;)Lcom/google/common/collect/r0$z;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/common/collect/r0$a0;Ljava/lang/Object;ILcom/google/common/collect/r0$z;)Lcom/google/common/collect/r0$z;
    .locals 1
    .param p4    # Lcom/google/common/collect/r0$z;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;)",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/common/collect/r0$z;

    invoke-static {p1}, Lcom/google/common/collect/r0$a0;->access$200(Lcom/google/common/collect/r0$a0;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/r0$z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/r0$z;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/r0$a0;Lcom/google/common/collect/r0$z;Lcom/google/common/collect/q0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$a0<",
            "TK;>;",
            "Lcom/google/common/collect/r0$z<",
            "TK;>;",
            "Lcom/google/common/collect/q0$a;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Lcom/google/common/collect/r0$i;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/google/common/collect/r0$a0;

    check-cast p2, Lcom/google/common/collect/r0$z;

    check-cast p3, Lcom/google/common/collect/q0$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$z$a;->a(Lcom/google/common/collect/r0$a0;Lcom/google/common/collect/r0$z;Lcom/google/common/collect/q0$a;)V

    return-void
.end method

.method public b()Lcom/google/common/collect/r0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$p;->STRONG:Lcom/google/common/collect/r0$p;

    return-object v0
.end method
