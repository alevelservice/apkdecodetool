.class public final Lcom/google/android/gms/internal/vision/n7;
.super Ljava/util/AbstractList;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/vision/k5;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/vision/k5;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final e:Lcom/google/android/gms/internal/vision/k5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/k5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/n7;->e:Lcom/google/android/gms/internal/vision/k5;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/vision/n7;)Lcom/google/android/gms/internal/vision/k5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/n7;->e:Lcom/google/android/gms/internal/vision/k5;

    return-object p0
.end method


# virtual methods
.method public final X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/n7;->e:Lcom/google/android/gms/internal/vision/k5;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/k5;->X()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final Y()Lcom/google/android/gms/internal/vision/k5;
    .locals 0

    return-object p0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/n7;->e:Lcom/google/android/gms/internal/vision/k5;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/p7;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/p7;-><init>(Lcom/google/android/gms/internal/vision/n7;)V

    return-object v0
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/n7;->e:Lcom/google/android/gms/internal/vision/k5;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/vision/k5;->j(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/m7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/vision/m7;-><init>(Lcom/google/android/gms/internal/vision/n7;I)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/n7;->e:Lcom/google/android/gms/internal/vision/k5;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
