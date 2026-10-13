.class public abstract Lcom/google/android/gms/internal/measurement/l2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/measurement/j5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/measurement/j2<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/measurement/l2<",
        "TMessageType;TBuilderType;>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/j5;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/measurement/k5;)Lcom/google/android/gms/internal/measurement/j5;
    .locals 1

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/m5;->a()Lcom/google/android/gms/internal/measurement/k5;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/measurement/j2;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/l2;->a(Lcom/google/android/gms/internal/measurement/j2;)Lcom/google/android/gms/internal/measurement/l2;

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "mergeFrom(MessageLite) can only merge messages of the same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract a(Lcom/google/android/gms/internal/measurement/j2;)Lcom/google/android/gms/internal/measurement/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method public abstract a([BIILcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/l2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/measurement/o3;",
            ")TBuilderType;"
        }
    .end annotation
.end method

.method public final a([BLcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/l2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/gms/internal/measurement/o3;",
            ")TBuilderType;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/l2;->a([BIILcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/l2;

    return-object p0
.end method
