.class final Lcom/google/common/collect/r0$q$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/r0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r0$q;
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
        "Lcom/google/common/collect/r0$q<",
        "TK;>;",
        "Lcom/google/common/collect/r0$r<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/r0$q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/r0$q$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/r0$q$a;

    invoke-direct {v0}, Lcom/google/common/collect/r0$q$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/r0$q$a;->a:Lcom/google/common/collect/r0$q$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Lcom/google/common/collect/r0$q$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/r0$q$a<",
            "TK;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$q$a;->a:Lcom/google/common/collect/r0$q$a;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Lcom/google/common/collect/r0$i;Lcom/google/common/collect/r0$i;)Lcom/google/common/collect/r0$i;
    .locals 0
    .param p3    # Lcom/google/common/collect/r0$i;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/google/common/collect/r0$r;

    check-cast p2, Lcom/google/common/collect/r0$q;

    check-cast p3, Lcom/google/common/collect/r0$q;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$q$a;->a(Lcom/google/common/collect/r0$r;Lcom/google/common/collect/r0$q;Lcom/google/common/collect/r0$q;)Lcom/google/common/collect/r0$q;

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
    check-cast p1, Lcom/google/common/collect/r0$r;

    check-cast p4, Lcom/google/common/collect/r0$q;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/r0$q$a;->a(Lcom/google/common/collect/r0$r;Ljava/lang/Object;ILcom/google/common/collect/r0$q;)Lcom/google/common/collect/r0$q;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$n;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$q$a;->a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$r;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/google/common/collect/r0$p;
    .locals 1

    .line 5
    sget-object v0, Lcom/google/common/collect/r0$p;->STRONG:Lcom/google/common/collect/r0$p;

    return-object v0
.end method

.method public a(Lcom/google/common/collect/r0$r;Lcom/google/common/collect/r0$q;Lcom/google/common/collect/r0$q;)Lcom/google/common/collect/r0$q;
    .locals 0
    .param p3    # Lcom/google/common/collect/r0$q;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;)",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/common/collect/r0$q;->a(Lcom/google/common/collect/r0$q;)Lcom/google/common/collect/r0$q;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/common/collect/r0$r;Ljava/lang/Object;ILcom/google/common/collect/r0$q;)Lcom/google/common/collect/r0$q;
    .locals 0
    .param p4    # Lcom/google/common/collect/r0$q;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;TK;I",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;)",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;"
        }
    .end annotation

    .line 8
    new-instance p1, Lcom/google/common/collect/r0$q;

    invoke-direct {p1, p2, p3, p4}, Lcom/google/common/collect/r0$q;-><init>(Ljava/lang/Object;ILcom/google/common/collect/r0$q;)V

    return-object p1
.end method

.method public a(Lcom/google/common/collect/r0;II)Lcom/google/common/collect/r0$r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0<",
            "TK;",
            "Lcom/google/common/collect/q0$a;",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;>;II)",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/google/common/collect/r0$r;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/r0$r;-><init>(Lcom/google/common/collect/r0;II)V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/common/collect/r0$n;Lcom/google/common/collect/r0$i;Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Lcom/google/common/collect/r0$r;

    check-cast p2, Lcom/google/common/collect/r0$q;

    check-cast p3, Lcom/google/common/collect/q0$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r0$q$a;->a(Lcom/google/common/collect/r0$r;Lcom/google/common/collect/r0$q;Lcom/google/common/collect/q0$a;)V

    return-void
.end method

.method public a(Lcom/google/common/collect/r0$r;Lcom/google/common/collect/r0$q;Lcom/google/common/collect/q0$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/r0$r<",
            "TK;>;",
            "Lcom/google/common/collect/r0$q<",
            "TK;>;",
            "Lcom/google/common/collect/q0$a;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public b()Lcom/google/common/collect/r0$p;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/r0$p;->STRONG:Lcom/google/common/collect/r0$p;

    return-object v0
.end method
