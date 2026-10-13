.class public abstract Lcom/google/android/datatransport/runtime/time/b;
.super Ljava/lang/Object;
.source "TimeModule.java"


# annotations
.annotation runtime Lcom/google/android/datatransport/runtime/dagger/Module;
.end annotation


# direct methods
.method static a()Lcom/google/android/datatransport/runtime/time/a;
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation build Lcom/google/android/datatransport/runtime/time/WallTime;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/time/f;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/f;-><init>()V

    return-object v0
.end method

.method static b()Lcom/google/android/datatransport/runtime/time/a;
    .locals 1
    .annotation runtime Lcom/google/android/datatransport/runtime/dagger/Provides;
    .end annotation

    .annotation build Lcom/google/android/datatransport/runtime/time/Monotonic;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/datatransport/runtime/time/e;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/time/e;-><init>()V

    return-object v0
.end method
