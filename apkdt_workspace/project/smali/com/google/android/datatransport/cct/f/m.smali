.class public abstract Lcom/google/android/datatransport/cct/f/m;
.super Ljava/lang/Object;
.source "LogRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/cct/f/m$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/android/datatransport/cct/f/m$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/f/g$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/cct/f/g$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/android/datatransport/cct/f/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Lcom/google/firebase/encoders/annotations/Encodable$Field;
        name = "logEvent"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/cct/f/l;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract e()Lcom/google/android/datatransport/cct/f/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method
