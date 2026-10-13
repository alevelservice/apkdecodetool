.class public abstract Lcom/google/android/datatransport/cct/f/m$a;
.super Ljava/lang/Object;
.source "LogRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/datatransport/cct/f/m$a;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/f/m$a;->a(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/f/m$a;

    return-object p0
.end method

.method public abstract a(J)Lcom/google/android/datatransport/cct/f/m$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Lcom/google/android/datatransport/cct/f/k;)Lcom/google/android/datatransport/cct/f/m$a;
    .param p1    # Lcom/google/android/datatransport/cct/f/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Lcom/google/android/datatransport/cct/f/p;)Lcom/google/android/datatransport/cct/f/m$a;
    .param p1    # Lcom/google/android/datatransport/cct/f/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract a(Ljava/lang/Integer;)Lcom/google/android/datatransport/cct/f/m$a;
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method abstract a(Ljava/lang/String;)Lcom/google/android/datatransport/cct/f/m$a;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract a(Ljava/util/List;)Lcom/google/android/datatransport/cct/f/m$a;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/f/l;",
            ">;)",
            "Lcom/google/android/datatransport/cct/f/m$a;"
        }
    .end annotation
.end method

.method public abstract a()Lcom/google/android/datatransport/cct/f/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(J)Lcom/google/android/datatransport/cct/f/m$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/datatransport/cct/f/m$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/datatransport/cct/f/m$a;->a(Ljava/lang/String;)Lcom/google/android/datatransport/cct/f/m$a;

    return-object p0
.end method
