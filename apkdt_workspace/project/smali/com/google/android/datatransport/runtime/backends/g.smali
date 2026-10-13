.class public abstract Lcom/google/android/datatransport/runtime/backends/g;
.super Ljava/lang/Object;
.source "BackendRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/backends/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/datatransport/runtime/backends/g$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/backends/a$b;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/backends/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/i/b/a/i/h;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b()[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
