.class final Lcom/google/common/collect/x0;
.super Lcom/google/common/collect/c1;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c1<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/collect/x0;

.field private static final serialVersionUID:J


# instance fields
.field private transient e:Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient f:Lcom/google/common/collect/c1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/c1<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/x0;

    invoke-direct {v0}, Lcom/google/common/collect/x0;-><init>()V

    sput-object v0, Lcom/google/common/collect/x0;->INSTANCE:Lcom/google/common/collect/x0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/x0;->INSTANCE:Lcom/google/common/collect/x0;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 0

    .line 2
    invoke-static {p1}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Le/i/c/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/x0;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.method public nullsFirst()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/c1<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0;->e:Lcom/google/common/collect/c1;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/c1;->nullsFirst()Lcom/google/common/collect/c1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/x0;->e:Lcom/google/common/collect/c1;

    :cond_0
    return-object v0
.end method

.method public nullsLast()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/c1<",
            "TS;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/c1;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/c1;->nullsLast()Lcom/google/common/collect/c1;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/x0;->f:Lcom/google/common/collect/c1;

    :cond_0
    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/c1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/c1<",
            "TS;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/j1;->INSTANCE:Lcom/google/common/collect/j1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ordering.natural()"

    return-object v0
.end method
